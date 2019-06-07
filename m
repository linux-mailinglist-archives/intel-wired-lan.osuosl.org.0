Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7093F398D2
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2019 00:35:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D3BDE876E7;
	Fri,  7 Jun 2019 22:35:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FFGHnHt6JpIB; Fri,  7 Jun 2019 22:35:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CAF2E876B6;
	Fri,  7 Jun 2019 22:35:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1361B1BF40D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 22:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0A045876BF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 22:34:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ueFZ4uIKVbY8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2019 22:34:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD2B1876B6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2019 22:34:57 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id d30so1859422pgm.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Jun 2019 15:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=LLvzHistUvG3tFIz6f+WFhmAnRXmHuTQs0YG9JoKNNc=;
 b=b2GA7FeKu504lfwSTtY+Hzk6I9cS1bTN3cNZbLMyc9J57Oz4pC3d9fdBaVtf56cFPB
 lxtzxDAc4P7sct0rcsb/a6zWuy9lEXyOH9YyxkiYB5tZqQ70b2IdhyLpryQ8L/HX4MNu
 L/8LVgACGeYj8XaLgdKBWVxpYDhB4fGgPD3yqe0nV7SC4OfD6w3RFrpnVr0Zvw05Jttw
 JjpshwuDTgqHGV4wlD8ZdvltM8u0bQycC79J/mAd0kLPXbyhkQiXfz08QlWrx0EemjTe
 UOP1gQKwDPvee0Lpv+1BPpbIe7Z9G5tdF/lCeDqDhrK7SETRp42AZ2mywg16UbnrgX+Q
 hUhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=LLvzHistUvG3tFIz6f+WFhmAnRXmHuTQs0YG9JoKNNc=;
 b=Ga6N2J2c3PjiU6qWuc98MYx/P74lxQE2aGrG9ArHLfjzbMf0QdXweXg+2i6nxidmbV
 E6FcYIodQMpHF9ZqQXKGNQPj0s68LQ6DfkKGQcHgMAwkHzpPD0hN+5bL6s73uaEwexQi
 6XJFRTfXQY8uSCZFlNEnHiFBAlJV49vmd3K8MDe5K+fewjuVJUdj9/BZKhX9jNb9TPiT
 vmbIQELzA6MlSsDCJ+6n0eUxCGkgVOa7jBnJ6rYkhtb+lzQcJ/Bf9+D9dMOmjqT0N1Yj
 q2W2XHavQWttF3lIDtYg8ln2v9iNFTGHgucytJ2WQFDmFgFmQmeyUmuBYhAS3T7jjM3L
 56FQ==
X-Gm-Message-State: APjAAAX/PcAKTbfQTnJn/JS94DO0aI50p7ofKYMXdBEjLup8wLpiMYE4
 1CQhOuTrwv+inmL4FL/O4/uY5A==
X-Google-Smtp-Source: APXvYqyF7j+Lr9Yvi3WvNYmTTdm0OCuF4PPqzAE/3N1Ldnu2toX8LFTn6cpgf4lj/3PyMhG8hs9zsw==
X-Received: by 2002:a65:6210:: with SMTP id d16mr3709222pgv.180.1559946897341; 
 Fri, 07 Jun 2019 15:34:57 -0700 (PDT)
Received: from cakuba.netronome.com (wsip-98-171-133-120.sd.sd.cox.net.
 [98.171.133.120])
 by smtp.gmail.com with ESMTPSA id i22sm3022508pfa.127.2019.06.07.15.34.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 15:34:57 -0700 (PDT)
Date: Fri, 7 Jun 2019 15:34:52 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: "Patel, Vedang" <vedang.patel@intel.com>
Message-ID: <20190607153452.53885f87@cakuba.netronome.com>
In-Reply-To: <0ED5E88B-E95A-4899-975D-00912685CEEF@intel.com>
References: <1559843458-12517-1-git-send-email-vedang.patel@intel.com>
 <1559843458-12517-5-git-send-email-vedang.patel@intel.com>
 <20190606162132.0591cc37@cakuba.netronome.com>
 <FF3C8B8E-421E-4C93-8895-C21A38BB55EE@intel.com>
 <20190607150243.369f6e2c@cakuba.netronome.com>
 <0ED5E88B-E95A-4899-975D-00912685CEEF@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/6] taprio: Add support
 for txtime-assist mode.
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
Cc: Jiri Pirko <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Murali Karicheri <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCA3IEp1biAyMDE5IDIyOjI3OjA3ICswMDAwLCBQYXRlbCwgVmVkYW5nIHdyb3RlOgo+
IEhpIEphY3ViLCAKPiAKPiA+IE9uIEp1biA3LCAyMDE5LCBhdCAzOjAyIFBNLCBKYWt1YiBLaWNp
bnNraSA8amFrdWIua2ljaW5za2lAbmV0cm9ub21lLmNvbT4gd3JvdGU6Cj4gPiAKPiA+IE9uIEZy
aSwgNyBKdW4gMjAxOSAyMDo0Mjo1NSArMDAwMCwgUGF0ZWwsIFZlZGFuZyB3cm90ZTogIAo+ID4+
PiBUaGFua3MgZm9yIHRoZSBjaGFuZ2VzLCBzaW5jZSB5b3Ugbm93IHZhbGlkYXRlIG5vIHVua25v
d24gZmxhZ3MgYXJlCj4gPj4+IHBhc3NlZCwgcGVyaGFwcyB0aGVyZSBpcyBubyBuZWVkIHRvIGNo
ZWNrIGlmIGZsYWdzIGFyZSA9PSB+MD8KPiA+Pj4gCj4gPj4+IElTX0VOQUJMRUQoKSBjb3VsZCBq
dXN0IGRvOiAoZmxhZ3MpICYgVENBX1RBUFJJT19BVFRSX0ZMQUdfVFhUSU1FX0FTU0lTVAo+ID4+
PiBObz8KPiA+Pj4gICAKPiA+PiBUaGlzIGlzIHNwZWNpZmljYWxseSBkb25lIHNvIHRoYXQgdXNl
ciBkb2VzIG5vdCBoYXZlIHRvIHNwZWNpZnkgdGhlCj4gPj4gb2ZmbG9hZCBmbGFncyB3aGVuIHRy
eWluZyB0byBpbnN0YWxsIHRoZSBhbm90aGVyIHNjaGVkdWxlIHdoaWNoIHdpbGwKPiA+PiBiZSBz
d2l0Y2hlZCB0byBhdCBhIGxhdGVyIHBvaW50IG9mIHRpbWUgKGkuZS4gdGhlIGFkbWluIHNjaGVk
dWxlCj4gPj4gaW50cm9kdWNlZCBpbiBWaW5pY2l1c+KAmSBsYXN0IHNlcmllcykuIFNldHRpbmcg
dGFwcmlvX2ZsYWdzIHRvIH4wCj4gPj4gd2lsbCBoZWxwIHVzIGRpc3Rpbmd1aXNoIGJldHdlZW4g
dGhlIGZsYWdzIHBhcmFtZXRlciBub3Qgc3BlY2lmaWVkCj4gPj4gYW5kIGZsYWdzIHNldCB0byAw
LiAgCj4gPiAKPiA+IEknbSBub3Qgc3VwZXIgY2xlYXIgb24gdGhpcywgYmVjYXVzZSBvZiBiYWNr
d2FyZCBjb21wYXQgeW91IGhhdmUgdG8KPiA+IHRyZWF0IGF0dHIgbm90IHByZXNlbnQgYXMgdW5z
ZXQuICBMZXQncyBzZWU6Cj4gPiAKPiA+IG5ldyBxZGlzYzoKPiA+IC0gZmxhZ3MgYXR0ciA9IDAg
LT4gdHh0aW1lIG5vdCB1c2VkCj4gPiAtIGZsYWdzIGF0dHIgPSAxIC0+IHR4dGltZSB1c2VkICAK
PiA+IC0+IG5vIGZsYWdzIGF0dHIgLT4gdHh0aW1lIG5vdCB1c2VkICAKPiA+IGNoYW5nZSBxZGlz
YzoKPiA+IC0gZmxhZ3MgYXR0ciA9IG9sZCBmbGFncyBhdHRyIC0+IGxlYXZlIHVuY2hhbmdlZAo+
ID4gLSBmbGFncyBhdHRyICE9IG9sZCBmbGFncyBhdHRyIC0+IGVycm9yCj4gPiAtIG5vIGZsYWdz
IGF0dHIgLT4gbGVhdmUgdHh0aW1lIHVuY2hhbmdlZAo+ID4gCj4gPiBEb2Vzbid0IHRoYXQgY292
ZXIgdGhlIGNhc2VzPyAgV2VyZSB5b3UgcGxhbm5pbmcgdG8gaGF2ZSBubyBmbGFnIGF0dHIKPiA+
IG9uIGNoYW5nZSBtZWFuIGRpc2FibGVkIHJhdGhlciB0aGFuIG5vIGNoYW5nZT8gIAo+IAo+IFlv
dSBjb3ZlcmVkIGFsbCB0aGUgY2FzZXMgYWJvdmUuCj4gCj4gVGhpbmtpbmcgYSBiaXQgbW9yZSBh
Ym91dCBpdCwgeWVzIHlvdSBhcmUgcmlnaHQuIEluaXRpaWFsaXppbmcgZmxhZ3MKPiB0byAwIHdp
bGwgd29yay4gIEkgd2lsbCBpbmNvcnBvcmF0ZSB0aGlzIGNoYW5nZSBpbiB0aGUgbmV4dCB2ZXJz
aW9uLgoKQ29vbCwgdGhhbmtzISAgCgpGV0lXIEkgdGhpbmsgaGlzdG9yaWNhbGx5IFRDIHVzZWQg
dG8gcmVxdWlyZSBhbGwgcGFyYW1ldGVycyBzcGVjaWZpZWQKYW5kIGFzc3VtZWQgMCByYXRoZXIg
dGhhbiBub3QgY2hhbmdlZCwgYnV0IEkgdGhpbmsgdGhhdCB3YXMgYmVjYXVzZSBDCnN0cnVjdHMg
d2VyZSBwYXNzZWQgYXMgYmxvYnMgaW5zdGVhZCBvZiBicmVha2luZyB0aGluZ3Mgb3V0IHBlciBh
dHRyLgpTbyB0b2RheSBJIHRoaW5rIGl0cyBiZXR0ZXIgdG8gbWFrZSBmdWxsIHVzZSBvZiBhdHRy
cyBhbmQgYXNzdW1lIG5vdApwcmVzZW50IHRvIG1lYW4gbm90IGNoYW5nZWQg8J+RjQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
