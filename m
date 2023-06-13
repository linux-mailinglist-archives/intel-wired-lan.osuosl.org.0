Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF7872E4A3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 15:52:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E2B160ADC;
	Tue, 13 Jun 2023 13:52:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E2B160ADC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686664328;
	bh=XOGuXtiGxjwY922/sWFw70O2WnTzpFx5pE399LV9euM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kwsdvhbh+tbAXH+wUw2UmCQHmDrkIiQB9edMWYeMwHWoPTCN3/tOKN4GRLhOhiili
	 GNDvzu9GEJtCCsVJlYh1zqxVJsR2F+FblJrFs8lQpJfJcBRLm4M1oHMrPbEaWxurV/
	 Eq6sV34Cq9fgWtsAHxZK/Toe06hf46CpWAFNE2/y7DaKhpw516ypVmXNlpF/lYUtPm
	 mzqxP6d5vTqxr8rDJeOyL20k6/0B+TgZRt0WZXvQFwHeU48NaM5e5JkINApJFGFwSg
	 2IlymbdDqYCZWzJS8/JiDVRA60l+aJDiuCysHAeqrBKAxU3XE9OYpC6N1Oc4Rvwpzg
	 FhgCiQGwUUHmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9gUQ0VvD-oLk; Tue, 13 Jun 2023 13:52:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BA5060AD2;
	Tue, 13 Jun 2023 13:52:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BA5060AD2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31F371BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 13:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1785441707
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 13:52:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1785441707
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id insx0tuRIxE2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 13:52:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CB43405AC
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1CB43405AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 13:51:59 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id
 ffacd0b85a97d-30fb4b3e62fso2011060f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 06:51:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686664317; x=1689256317;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=WaeJYs/uG6fynkKfa9zh2deKdFZIe8/Di6A1zgej6LU=;
 b=QVS/pfnT7quzZvv/JVA1VAxDEXON5Tzw6eCd21ZepKVJC0FP/OQe+yLKZOAuCbs11H
 hOt9lMOpwdlLIIf8ZsmEQsHtia9Iwd82ntva22ueTXpVAL8ZytAWkcGI/5wj1sHlddL1
 /PVoRF7DcMe41XYviE10i/X0xKNhl4oWM4HJ01tbLNGvcUIV8LhbNZuL+2lhc7p+BEWj
 eCOUqwiulWi7VlutxspeKpuy6+xno26EIOMRw7vASyTIPnhu7lFGSPhhnXdxg/IMLNmA
 1IvnV8LQ+4UwRL+1zhygsTtiy2i16rgfifilIlbCVTBbgy2Vhj5NWqMI/+hsFepJa+uF
 7kUw==
X-Gm-Message-State: AC+VfDxDwAISC40STm+gQT8fp8xKIydya3YHcJP8BDJS5EcW3+I3DqMd
 CX5Eekwbj8s1FIanp+GcqeM5zA==
X-Google-Smtp-Source: ACHHUZ6tbmwrKTMNvbpuPLgT+1R9lK2K8a7nds1UQDOt+PvY6ORk2+AOkeh44wiUBJm89/taQrjyYQ==
X-Received: by 2002:adf:f548:0:b0:30e:1103:2e39 with SMTP id
 j8-20020adff548000000b0030e11032e39mr6622276wrp.58.1686664317375; 
 Tue, 13 Jun 2023 06:51:57 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 n16-20020adfe350000000b0030e5b1fffc3sm15502558wrj.9.2023.06.13.06.51.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jun 2023 06:51:56 -0700 (PDT)
Date: Tue, 13 Jun 2023 15:51:55 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Petr Oros <poros@redhat.com>
Message-ID: <ZIh0e5b/xp6H85pN@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-7-arkadiusz.kubalewski@intel.com>
 <343e2638d2e9b3d13216235f85c2d1dae2634881.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <343e2638d2e9b3d13216235f85c2d1dae2634881.camel@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686664317; x=1689256317; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=WaeJYs/uG6fynkKfa9zh2deKdFZIe8/Di6A1zgej6LU=;
 b=Q1TcKKMKKnZe7DzIPaTDFI6gquigAuW8XeW4+klDezAjpwuO6fGCnJ1f7r/u6KZ0ER
 O9dM1DXba6jhcO9WyqBBbXkOHVH51o+LTctGbKiFGcSH95isneJQPVjB5zHyiodmtN3Q
 iiKAFQe47MdbZTDN7b34IMWXoX3zXEDuCXxkBRbmTYHrBDa3wPpgoRjui2Igf2KIbXxJ
 LQWjxywaHFKOJAd0qWNhlGfaGxanYdhKtQUL87ogp+qDZ0PVjsxPh/zmXDXpLVRlr1QP
 CsMUeQ2Eo5dTH5eOxqCdjEV+d9P6uNSTayFwtj3BByZuvQAvlobd7CngPX5JuQ9zHbHY
 fMiw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=Q1TcKKMK
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 06/10] netdev: expose DPLL pin
 handle for netdevice
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 Jiri Pirko <jiri@nvidia.com>, kuba@kernel.org, vadfed@fb.com,
 pabeni@redhat.com, ricardo.canuelo@collabora.com, arnd@arndb.de,
 idosch@nvidia.com, richardcochran@gmail.com, claudiajkang@gmail.com,
 kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 airlied@redhat.com, nicolas.dichtel@6wind.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk, sj@kernel.org,
 vadim.fedorenko@linux.dev, linux@zary.sk, gregkh@linuxfoundation.org,
 ogabbay@kernel.org, nipun.gupta@amd.com, linux-kernel@vger.kernel.org,
 andy.ren@getcruise.com, tzimmermann@suse.de, jonathan.lemon@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net, milena.olech@intel.com,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TW9uLCBKdW4gMTIsIDIwMjMgYXQgMTE6MTc6MjNBTSBDRVNULCBwb3Jvc0ByZWRoYXQuY29tIHdy
b3RlOgo+QXJrYWRpdXN6IEt1YmFsZXdza2kgcMOtxaFlIHYgUMOhIDA5LiAwNi4gMjAyMyB2IDE0
OjE4ICswMjAwOgo+PiBGcm9tOiBKaXJpIFBpcmtvIDxqaXJpQG52aWRpYS5jb20+CgpbLi4uXQoK
Cj4+ICtzdGF0aWMgc2l6ZV90IHJ0bmxfZHBsbF9waW5fc2l6ZShjb25zdCBzdHJ1Y3QgbmV0X2Rl
dmljZSAqZGV2KQo+PiArewo+PiArwqDCoMKgwqDCoMKgwqBzaXplX3Qgc2l6ZSA9IG5sYV90b3Rh
bF9zaXplKDApOyAvKiBuZXN0IElGTEFfRFBMTF9QSU4gKi8KPj4gKwo+PiArwqDCoMKgwqDCoMKg
wqBpZiAoZGV2LT5kcGxsX3BpbikKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNp
emUgKz0gZHBsbF9tc2dfcGluX2hhbmRsZV9zaXplKGRldi0+ZHBsbF9waW4pOwo+Cj5IaSBBcmth
ZGl1c3osCj4KPm5ldF9kZXZpY2UtPmRwbGxfcGluIGlzIG9ubHkgdmFsaWQgaWYgSVNfRU5BQkxF
RChDT05GSUdfRFBMTCkKPkJ1dCB0aGUgY29kZSBpbiBuZXQvY29yZS9ydG5ldGxpbmsuYyBkb2Vz
bid0IHJlc3BlY3QgdGhhdC4KPklmIENPTkZJR19EUExMIGlzIG5vdCBzZXQsIG5ldC9jb3JlL3J0
bmV0bGluay5jIGNhbm5vdCBiZSBjb21waWxlZC4KPgo+UmVnYXJkcywKPlBldHIgCgpZb3UgYXJl
IGNvcnJlY3QuIEhlcmUncyB0aGUgc3F1YXNoLXBhdGNoIHRvIGZpeCB0aGlzLiBBcmthZGl1c3os
IGNvdWxkCnlvdSBwbGVhc2UgbWFrZSB0aGUgc3F1YXNoPyBUaGFua3MhCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kcGxsL2RwbGxfbmV0bGluay5jIGIvZHJpdmVycy9kcGxsL2RwbGxfbmV0bGluay5j
CmluZGV4IGU2ZWZjMTdhYWYyNi4uMDBkYzk2YzNhZGU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Rw
bGwvZHBsbF9uZXRsaW5rLmMKKysrIGIvZHJpdmVycy9kcGxsL2RwbGxfbmV0bGluay5jCkBAIC0z
MDMsMTIgKzMwMywxNCBAQCBkcGxsX2NtZF9waW5fZmlsbF9kZXRhaWxzKHN0cnVjdCBza19idWZm
ICptc2csIHN0cnVjdCBkcGxsX3BpbiAqcGluLAogCiBzaXplX3QgZHBsbF9tc2dfcGluX2hhbmRs
ZV9zaXplKHN0cnVjdCBkcGxsX3BpbiAqcGluKQogewotCXJldHVybiBubGFfdG90YWxfc2l6ZSg0
KTsgLyogRFBMTF9BX1BJTl9JRCAqLworCXJldHVybiBwaW4gPyBubGFfdG90YWxfc2l6ZSg0KSA6
IDA7IC8qIERQTExfQV9QSU5fSUQgKi8KIH0KIEVYUE9SVF9TWU1CT0xfR1BMKGRwbGxfbXNnX3Bp
bl9oYW5kbGVfc2l6ZSk7CiAKIGludCBkcGxsX21zZ19hZGRfcGluX2hhbmRsZShzdHJ1Y3Qgc2tf
YnVmZiAqbXNnLCBzdHJ1Y3QgZHBsbF9waW4gKnBpbikKIHsKKwlpZiAoIXBpbikKKwkJcmV0dXJu
IDA7CiAJaWYgKG5sYV9wdXRfdTMyKG1zZywgRFBMTF9BX1BJTl9JRCwgcGluLT5pZCkpCiAJCXJl
dHVybiAtRU1TR1NJWkU7CiAJcmV0dXJuIDA7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L25l
dGRldmljZS5oIGIvaW5jbHVkZS9saW51eC9uZXRkZXZpY2UuaAppbmRleCBiMDAyZTNjYzk5NDMu
LjgyYWQxMmZkNDI2NiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9uZXRkZXZpY2UuaAorKysg
Yi9pbmNsdWRlL2xpbnV4L25ldGRldmljZS5oCkBAIC0zOTY3LDYgKzM5NjcsMTYgQEAgaW50IGRl
dl9nZXRfcG9ydF9wYXJlbnRfaWQoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwKIGJvb2wgbmV0ZGV2
X3BvcnRfc2FtZV9wYXJlbnRfaWQoc3RydWN0IG5ldF9kZXZpY2UgKmEsIHN0cnVjdCBuZXRfZGV2
aWNlICpiKTsKIHZvaWQgbmV0ZGV2X2RwbGxfcGluX3NldChzdHJ1Y3QgbmV0X2RldmljZSAqZGV2
LCBzdHJ1Y3QgZHBsbF9waW4gKmRwbGxfcGluKTsKIHZvaWQgbmV0ZGV2X2RwbGxfcGluX2NsZWFy
KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYpOworCitzdGF0aWMgaW5saW5lIHN0cnVjdCBkcGxsX3Bp
biAqbmV0ZGV2X2RwbGxfcGluKGNvbnN0IHN0cnVjdCBuZXRfZGV2aWNlICpkZXYpCit7CisjaWYg
SVNfRU5BQkxFRChDT05GSUdfRFBMTCkKKwlyZXR1cm4gZGV2LT5kcGxsX3BpbjsKKyNlbHNlCisJ
cmV0dXJuIE5VTEw7CisjZW5kaWYKK30KKwogc3RydWN0IHNrX2J1ZmYgKnZhbGlkYXRlX3htaXRf
c2tiX2xpc3Qoc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IG5ldF9kZXZpY2UgKmRldiwgYm9v
bCAqYWdhaW4pOwogc3RydWN0IHNrX2J1ZmYgKmRldl9oYXJkX3N0YXJ0X3htaXQoc3RydWN0IHNr
X2J1ZmYgKnNrYiwgc3RydWN0IG5ldF9kZXZpY2UgKmRldiwKIAkJCQkgICAgc3RydWN0IG5ldGRl
dl9xdWV1ZSAqdHhxLCBpbnQgKnJldCk7CmRpZmYgLS1naXQgYS9uZXQvY29yZS9ydG5ldGxpbmsu
YyBiL25ldC9jb3JlL3J0bmV0bGluay5jCmluZGV4IGViZTlhZTg2MDhmYy4uNjdkZDQ1NWUxNWM3
IDEwMDY0NAotLS0gYS9uZXQvY29yZS9ydG5ldGxpbmsuYworKysgYi9uZXQvY29yZS9ydG5ldGxp
bmsuYwpAQCAtMTA1Niw4ICsxMDU2LDcgQEAgc3RhdGljIHNpemVfdCBydG5sX2RwbGxfcGluX3Np
emUoY29uc3Qgc3RydWN0IG5ldF9kZXZpY2UgKmRldikKIHsKIAlzaXplX3Qgc2l6ZSA9IG5sYV90
b3RhbF9zaXplKDApOyAvKiBuZXN0IElGTEFfRFBMTF9QSU4gKi8KIAotCWlmIChkZXYtPmRwbGxf
cGluKQotCQlzaXplICs9IGRwbGxfbXNnX3Bpbl9oYW5kbGVfc2l6ZShkZXYtPmRwbGxfcGluKTsK
KwlzaXplICs9IGRwbGxfbXNnX3Bpbl9oYW5kbGVfc2l6ZShuZXRkZXZfZHBsbF9waW4oZGV2KSk7
CiAKIAlyZXR1cm4gc2l6ZTsKIH0KQEAgLTE3OTAsMTEgKzE3ODksOSBAQCBzdGF0aWMgaW50IHJ0
bmxfZmlsbF9kcGxsX3BpbihzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAogCWlmICghZHBsbF9waW5fbmVz
dCkKIAkJcmV0dXJuIC1FTVNHU0laRTsKIAotCWlmIChkZXYtPmRwbGxfcGluKSB7Ci0JCXJldCA9
IGRwbGxfbXNnX2FkZF9waW5faGFuZGxlKHNrYiwgZGV2LT5kcGxsX3Bpbik7Ci0JCWlmIChyZXQg
PCAwKQotCQkJZ290byBuZXN0X2NhbmNlbDsKLQl9CisJcmV0ID0gZHBsbF9tc2dfYWRkX3Bpbl9o
YW5kbGUoc2tiLCBuZXRkZXZfZHBsbF9waW4oZGV2KSk7CisJaWYgKHJldCA8IDApCisJCWdvdG8g
bmVzdF9jYW5jZWw7CiAKIAlubGFfbmVzdF9lbmQoc2tiLCBkcGxsX3Bpbl9uZXN0KTsKIAlyZXR1
cm4gMDsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0
cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
