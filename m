Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C0E5A299E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 16:34:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D105283EE9;
	Fri, 26 Aug 2022 14:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D105283EE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661524486;
	bh=xlaFpdnihflwxBD2252R2gtuiNxvztRLvahZyRxStCY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pyVBh3zGoYgwg5GSplwwnZUfeLZpppancrABHNFu62YswRlzL4wpBdpuRT8VjCvhJ
	 y/IXT7r1OceoROn9OEYbbts5wxuj7NjGwEcZ8QPC9rMxZ4E8xTVpzuJCg2voddm1Ux
	 nQY6gxvHjwzmwcM/DTBSWTub323SzivWuG8bKEqQ1WBT1lc761NKOMvj93rbAVEm+L
	 ROVlpWDOFOb3yCMpONXFfNHP9yNhkMls9wjzARVONo5vHVF/kCkELcmqI2XMphS1tN
	 L544h52TXPjcP19r6KGekvKY+oqMQwHBCxIsmP/+F03GZ6U8Y3r+l+EjU16YjqNTVs
	 3p3g20FMdWyEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hJptDzEAd_1x; Fri, 26 Aug 2022 14:34:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4F8083EC1;
	Fri, 26 Aug 2022 14:34:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4F8083EC1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 723721BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 14:34:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 599866111C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 14:34:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 599866111C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6-Y3HqaplU7z for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 14:34:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCC2D60B5A
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DCC2D60B5A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 14:34:37 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id x93so2195379ede.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 07:34:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc;
 bh=9zlwCPVehJQ1qgjHuCqk7QskOCRiDPoz2uVWsDuaHXA=;
 b=Jr23NFUU6S7FQ/EBZXb2M0a7vB5E6XcnwUIlshgnk7Ol04DFjfdPi13vVnUVOLRN87
 J2KxEhXT8GroR/L6ezIjpBHItM45gog6aWbqJtHVH79/HQWr4S/bUNLaSRC6vePwreX1
 +6P4EbVDDW6zYUiifr09lkBrtsdGALikAE9FLN4dNPaOOmqti+iTieJXUXficN8LPYdf
 5CaZZ+elu9XQuxZdj2zt6eUPDunq7L3O3s+sVXWZBUNW1l+xpWGGWKAG8R8oyXySKekv
 nYlsLov8CRM9MOSEw/AXpHv7qg1TIYSaT98jhgv86ykYn/bZLnJhgj7kVNF2l67O9crH
 N2sw==
X-Gm-Message-State: ACgBeo3eSYKQjhYjVNn3k9YgDO0LMk5L1EazRHLpUJRd8arFLK5nzcgw
 Ya9Sc3TJqCrY9Gl7Vgm0csvq7g==
X-Google-Smtp-Source: AA6agR4XSVmzN1sOs2T2fKu+ihFGyRk7Bm77OfYpfXrHGJiIkQ7cdmBiP7+80PNa8q8VQ0gCXY5GEQ==
X-Received: by 2002:a05:6402:551a:b0:446:1526:85ea with SMTP id
 fi26-20020a056402551a00b00446152685eamr7159133edb.188.1661524475867; 
 Fri, 26 Aug 2022 07:34:35 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 b7-20020aa7c907000000b004478e9ab2c5sm1362707edt.69.2022.08.26.07.34.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Aug 2022 07:34:35 -0700 (PDT)
Date: Fri, 26 Aug 2022 16:34:34 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Message-ID: <YwjZ+h82UrF2MrxO@nanopsycho>
References: <20220826110059.119927-1-wojciech.drewek@intel.com>
 <YwircDhHhOfqdHy/@nanopsycho>
 <MW4PR11MB5776E6C92351788A0E55B6CBFD759@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MW4PR11MB5776E6C92351788A0E55B6CBFD759@MW4PR11MB5776.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc;
 bh=9zlwCPVehJQ1qgjHuCqk7QskOCRiDPoz2uVWsDuaHXA=;
 b=ADLsg/Oi/Efwq6v44nXKp2rbwJ1f1EFDTiuc/nAwlP9XuqPA8wEMyg9iDu95s2OYL5
 nnEL67MBpAu1ZKYTrD9IK9hSkutHmoM/esRdyy8AGLGSaQwzvB9oQwhI3aBSJKRT0+4v
 LOkyCY3DrxGC/NM34g3IoQuCRuTdZ0ttk9yWPvBi0vUttFYyXABE5el0cqdP/IgI5YZY
 8EkYbq+he4mJxW0vRz/iym4SmJS5pj0qem9Qlks3m7Hkb88ez/+mQjgqbGC86qALstmI
 DRuW5xsu2gDMNGeSOHxbmopRmmUK1UyWgdPvzQxqdQ2z9YLvCBf6HPDk8o1hdyMLMn7W
 3YNg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=ADLsg/Oi
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next 0/5] ice: L2TPv3 offload
 support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "maksym.glubokiy@plvision.eu" <maksym.glubokiy@plvision.eu>,
 "komachi.yoshiki@gmail.com" <komachi.yoshiki@gmail.com>,
 "jchapman@katalix.com" <jchapman@katalix.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "boris.sukholitko@broadcom.com" <boris.sukholitko@broadcom.com>,
 "louis.peens@corigine.com" <louis.peens@corigine.com>,
 "gnault@redhat.com" <gnault@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "vladbu@nvidia.com" <vladbu@nvidia.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "pablo@netfilter.org" <pablo@netfilter.org>,
 "baowen.zheng@corigine.com" <baowen.zheng@corigine.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "paulb@nvidia.com" <paulb@nvidia.com>, "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJpLCBBdWcgMjYsIDIwMjIgYXQgMDE6MzY6NTVQTSBDRVNULCB3b2pjaWVjaC5kcmV3ZWtAaW50
ZWwuY29tIHdyb3RlOgo+Cj4KPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gRnJvbTog
SmlyaSBQaXJrbyA8amlyaUByZXNudWxsaS51cz4KPj4gU2VudDogcGnEhXRlaywgMjYgc2llcnBu
aWEgMjAyMiAxMzoxNgo+PiBUbzogRHJld2VrLCBXb2pjaWVjaCA8d29qY2llY2guZHJld2VrQGlu
dGVsLmNvbT4KPj4gQ2M6IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IExvYmFraW4sIEFsZXhhbmRy
IDxhbGV4YW5kci5sb2Jha2luQGludGVsLmNvbT47IEJyYW5kZWJ1cmcsIEplc3NlIDxqZXNzZS5i
cmFuZGVidXJnQGludGVsLmNvbT47Cj4+IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwubmd1
eWVuQGludGVsLmNvbT47IGRhdmVtQGRhdmVtbG9mdC5uZXQ7IGVkdW1hemV0QGdvb2dsZS5jb207
IGt1YmFAa2VybmVsLm9yZzsKPj4gcGFiZW5pQHJlZGhhdC5jb207IGpoc0Btb2phdGF0dS5jb207
IHhpeW91Lndhbmdjb25nQGdtYWlsLmNvbTsgbWFyY2luLnN6eWNpa0BsaW51eC5pbnRlbC5jb207
Cj4+IG1pY2hhbC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb207IGt1cnRAbGludXRyb25peC5k
ZTsgYm9yaXMuc3VraG9saXRrb0Bicm9hZGNvbS5jb207IHZsYWRidUBudmlkaWEuY29tOwo+PiBr
b21hY2hpLnlvc2hpa2lAZ21haWwuY29tOyBwYXVsYkBudmlkaWEuY29tOyBiYW93ZW4uemhlbmdA
Y29yaWdpbmUuY29tOyBsb3Vpcy5wZWVuc0Bjb3JpZ2luZS5jb207Cj4+IHNpbW9uLmhvcm1hbkBj
b3JpZ2luZS5jb207IHBhYmxvQG5ldGZpbHRlci5vcmc7IG1ha3N5bS5nbHVib2tpeUBwbHZpc2lv
bi5ldTsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7Cj4+IGpjaGFwbWFuQGthdGFs
aXguY29tOyBnbmF1bHRAcmVkaGF0LmNvbQo+PiBTdWJqZWN0OiBSZTogW1JGQyBQQVRDSCBuZXQt
bmV4dCAwLzVdIGljZTogTDJUUHYzIG9mZmxvYWQgc3VwcG9ydAo+PiAKPj4gRnJpLCBBdWcgMjYs
IDIwMjIgYXQgMDE6MDA6NTRQTSBDRVNULCB3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tIHdyb3Rl
Ogo+PiA+QWRkIHN1cHBvcnQgZm9yIGRpc3NlY3RpbmcgTDJUUHYzIHNlc3Npb24gaWQgaW4gZmxv
dyBkaXNzZWN0b3IuIEFkZCBzdXBwb3J0Cj4+ID5mb3IgdGhpcyBmaWVsZCBpbiB0Yy1mbG93ZXIg
YW5kIHN1cHBvcnQgb2ZmbG9hZGluZyBMMlRQdjMuIEZpbmFsbHksIGFkZAo+PiA+c3VwcG9ydCBm
b3IgaGFyZHdhcmUgb2ZmbG9hZCBvZiBMMlRQdjMgcGFja2V0cyBiYXNlZCBvbiBzZXNzaW9uIGlk
IGluCj4+ID5zd2l0Y2hkZXYgbW9kZSBpbiBpY2UgZHJpdmVyLgo+PiA+Cj4+ID5FeGFtcGxlIGZp
bHRlcjoKPj4gPiAgIyB0YyBmaWx0ZXIgYWRkIGRldiAkUEYxIGluZ3Jlc3MgcHJpbyAxIHByb3Rv
Y29sIGlwIFwKPj4gPiAgICAgIGZsb3dlciBcCj4+ID4gICAgICAgIGlwX3Byb3RvIGwydHAgXAo+
PiA+ICAgICAgICBsMnRwdjNfc2lkIDEyMzQgXAo+PiA+ICAgICAgICBza2lwX3N3IFwKPj4gPiAg
ICAgIGFjdGlvbiBtaXJyZWQgZWdyZXNzIHJlZGlyZWN0IGRldiAkVkYxX1BSCj4+ID4KPj4gPkNo
YW5nZXMgaW4gaXByb3V0ZTIgYXJlIHJlcXVpcmVkIHRvIHVzZSB0aGUgbmV3IGZpZWxkcy4KPj4g
Pgo+PiA+SUNFIENPTU1TIEREUCBwYWNrYWdlIGlzIHJlcXVpcmVkIHRvIGNyZWF0ZSBhIGZpbHRl
ciBpbiBpY2UuCj4+IAo+PiBJIGRvbid0IHVuZGVyc3RhbmQgd2hhdCBkbyB5b3UgbWVhbiBieSB0
aGlzLiBDb3VsZCB5b3UgcGxlYXNlIGV4cGxhaW4KPj4gd2hhdCB0aGlzIG15c3RlcmlvdXMgIklD
RSBDT01NUyBERFAgcGFja2FnZSIgaXM/IERvIEkgdW5kZXJzdGFuZCBpdAo+PiBjb3JyZWN0bHkg
dGhhdCB3aXRob3V0IGl0LCB0aGUgc29sdXRpb24gd291bGQgbm90IHdvcms/Cj4KPlNvcnJ5LCBJ
J2xsIGluY2x1ZGUgbW9yZSBwcmVjaXNlIGRlc2NyaXB0aW9uIGluIHRoZSBuZXh0IHZlcnNpb24u
Cj5ERFAgKER5bmFtaWMgRGV2aWNlIFBlcnNvbmFsaXphdGlvbikgaXMgYSBmaXJtd2FyZSBwYWNr
YWdlIHRoYXQgY29udGFpbnMgZGVmaW5pdGlvbnMKPnByb3RvY29sJ3MgaGVhZGVycyBhbmQgcGFj
a2V0cy4gSXQgYWxsb3dzIHlvdSAgdG8gYWRkIHN1cHBvcnQgZm9yIHRoZSBuZXcgcHJvdG9jb2wg
dG8gdGhlCj5OSUMgY2FyZCB3aXRob3V0IHJlYm9vdGluZy4gIElmIHRoZSBERFAgcGFja2FnZSBk
b2VzIG5vdCBzdXBwb3J0IEwyVFB2MyB0aGVuIGh3IG9mZmxvYWQgCj53aWxsIG5vdCB3b3JrLCBo
b3dldmVyIHN3IG9mZmxvYWQgd2lsbCBzdGlsbCB3b3JrLgoKSG1tLCBzbyBpdCBpcyBzb21lIEZX
IHBhcnQ/IFdoeSBkbyB3ZSBjYXJlIGFib3V0IGl0IGhlcmUgaW4gcGF0Y2hzZXQKZGVzY3JpcHRp
b24/CgoKPgo+TW9yZSBpbmZvIG9uIEREUDoKPmh0dHBzOi8vd3d3LmludGVsLmNvbS9jb250ZW50
L3d3dy91cy9lbi9hcmNoaXRlY3R1cmUtYW5kLXRlY2hub2xvZ3kvZXRoZXJuZXQvZHluYW1pYy1k
ZXZpY2UtcGVyc29uYWxpemF0aW9uLWJyaWVmLmh0bWwKPgo+PiAKPj4gPgo+PiA+TWFyY2luIFN6
eWNpayAoMSk6Cj4+ID4gIGljZTogQWRkIEwyVFB2MyBoYXJkd2FyZSBvZmZsb2FkIHN1cHBvcnQK
Pj4gPgo+PiA+V29qY2llY2ggRHJld2VrICg0KToKPj4gPiAgdWFwaTogbW92ZSBJUFBST1RPX0wy
VFAgdG8gaW4uaAo+PiA+ICBmbG93X2Rpc3NlY3RvcjogQWRkIEwyVFB2MyBkaXNzZWN0b3JzCj4+
ID4gIG5ldC9zY2hlZDogZmxvd2VyOiBBZGQgTDJUUHYzIGZpbHRlcgo+PiA+ICBmbG93X29mZmxv
YWQ6IEludHJvZHVjZSBmbG93X21hdGNoX2wydHB2Mwo+PiA+Cj4+ID4gLi4uL2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfcHJvdG9jb2xfdHlwZS5oICAgIHwgIDggKysrCj4+ID4gZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zd2l0Y2guYyAgIHwgNzAgKysrKysrKysrKysrKysrKysr
LQo+PiA+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfdGNfbGliLmMgICB8IDI3
ICsrKysrKy0KPj4gPiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3RjX2xpYi5o
ICAgfCAgNiArKwo+PiA+IGluY2x1ZGUvbmV0L2Zsb3dfZGlzc2VjdG9yLmggICAgICAgICAgICAg
ICAgICB8ICA5ICsrKwo+PiA+IGluY2x1ZGUvbmV0L2Zsb3dfb2ZmbG9hZC5oICAgICAgICAgICAg
ICAgICAgICB8ICA2ICsrCj4+ID4gaW5jbHVkZS91YXBpL2xpbnV4L2luLmggICAgICAgICAgICAg
ICAgICAgICAgIHwgIDIgKwo+PiA+IGluY2x1ZGUvdWFwaS9saW51eC9sMnRwLmggICAgICAgICAg
ICAgICAgICAgICB8ICAyIC0KPj4gPiBpbmNsdWRlL3VhcGkvbGludXgvcGt0X2Nscy5oICAgICAg
ICAgICAgICAgICAgfCAgMiArCj4+ID4gbmV0L2NvcmUvZmxvd19kaXNzZWN0b3IuYyAgICAgICAg
ICAgICAgICAgICAgIHwgMjggKysrKysrKysKPj4gPiBuZXQvY29yZS9mbG93X29mZmxvYWQuYyAg
ICAgICAgICAgICAgICAgICAgICAgfCAgNyArKwo+PiA+IG5ldC9zY2hlZC9jbHNfZmxvd2VyLmMg
ICAgICAgICAgICAgICAgICAgICAgICB8IDE2ICsrKysrCj4+ID4gMTIgZmlsZXMgY2hhbmdlZCwg
MTc5IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+ID4KPj4gPi0tCj4+ID4yLjMxLjEK
Pj4gPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBz
Oi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
