Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1162D6315
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Dec 2020 18:10:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 306D487694;
	Thu, 10 Dec 2020 17:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iP3IcN5n3pXc; Thu, 10 Dec 2020 17:10:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA59287645;
	Thu, 10 Dec 2020 17:10:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F61C1BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 17:10:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5B37C871FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 17:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tpKPQlrNunyB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Dec 2020 17:10:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A696D870C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 17:10:21 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id a3so6079153wmb.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 09:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cMIbkw8ToNIRCP5ibpvh5XChPbgC3AeOsLNE8THfWBw=;
 b=lmotrk1DLgtc1ntuVGmQPF+tU/pfVAgXRw3yPneG2vtnDYIcwj1kIG/x92rtSD2a2M
 ixH2yjJDD/rSE6xUz1V8xyRPuR6P0zu86P2kg0My5qmL+EGnbm3sjAWWUb+lHrmJTbWi
 lVFy5ONWJS7/cTQaJEMXFyHSPIVjOHAApfzy7+Br7yVj5fWMgIawiQ6BWXG7aLgP9kbJ
 OPSv71Ff4LgylmLljK6LaZZX2pn0G2ohnYge41hMPShULtK2ABVPwtkTmBm5oGo8+vgP
 X8W4CpzYOUNHgs8fxzimqtuyt2+K7wztVduWdYqIrEi16KTY2slmKFA7ZrR9llGkcS0v
 8mXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cMIbkw8ToNIRCP5ibpvh5XChPbgC3AeOsLNE8THfWBw=;
 b=ETLFiMi2E8cxBZ6aq91I+u7XviW46pZ6qEOsbRt40aaOZIRifuT+HQ7am0VpBjTuQG
 tnHSLt8WgC3n08PF0hnzaJQyIT/kEvKrWQLe42S8FEnrAT8T2F8Gn4kqIZVUzFN7Q6za
 YJRA9EBu1KV8TFzNEYP7HSMs4nCoGO8WNRUKKd1xVlDid27n9ITsZOCFVqNWRS+k1GfX
 nSQ6mKQv4vLTGWOg6ImR1OyKvPeHpvgV97IqrlhHrYNqW+KBUvSQpOh3QrbV+oDkCXH/
 9PMmKQXypvj9kD6HX0N/J+9d0obxmNLiDKZ/qZLBXpDEKWA9uN4xns6D4gOqO+cZRs4/
 8fFA==
X-Gm-Message-State: AOAM533rQZKeXK9I0bJiiKLr3od0/7jZmDkjVe1YttYOxoZNaye0HfE/
 Y738dTNWDd4qyJOXEMZrPIj0Xe1VVY5IAs9q1Zg=
X-Google-Smtp-Source: ABdhPJxjeI41+J/a/a5jp41VltkB46BgA1Q0hs5Mz+qXXaPi74197M+NShjlBtggg+MD7LWdnkEc5vWRSJMxXriyP+s=
X-Received: by 2002:a1c:5506:: with SMTP id j6mr9449234wmb.30.1607620220071;
 Thu, 10 Dec 2020 09:10:20 -0800 (PST)
MIME-Version: 1.0
References: <20201210121915.14412-1-bjorn.topel@gmail.com>
 <20201210161105.GD45760@ranger.igk.intel.com>
In-Reply-To: <20201210161105.GD45760@ranger.igk.intel.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Thu, 10 Dec 2020 18:10:08 +0100
Message-ID: <CAJ+HfNh4LS-25LH0gE0Pun7v=q=8zChmKUaN+hQA_58gwtbZ-g@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice,
 xsk: Move Rx alloction out of while-loop
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
Cc: Netdev <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAxMCBEZWMgMjAyMCBhdCAxNzoyMCwgTWFjaWVqIEZpamFsa293c2tpCjxtYWNpZWou
ZmlqYWxrb3dza2lAaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgRGVjIDEwLCAyMDIwIGF0
IDAxOjE5OjE1UE0gKzAxMDAsIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4gPiBGcm9tOiBCasO2cm4g
VMO2cGVsIDxiam9ybi50b3BlbEBpbnRlbC5jb20+Cj4gPgo+ID4gSW5zdGVhZCBvZiB0cnlpbmcg
dG8gYWxsb2NhdGUgZm9yIGVhY2ggcGFja2V0LCBtb3ZlIGl0IG91dHNpZGUgdGhlCj4gPiB3aGls
ZSBsb29wIGFuZCB0cnkgdG8gYWxsb2NhdGUgb25jZSBldmVyeSBOQVBJIGxvb3AuCj4KPiBUbyBy
ZWN0aWZ5IGFib3ZlLCBpdCB3YXNuJ3QgZm9yIGVhY2ggcGFja2V0IGJ1dCBwZXIgSUNFX1JYX0JV
Rl9XUklURQo+IGNsZWFuZWQgZnJhbWVzICgxNikuCj4KPiBZb3UgYWxzbyBoYXZlIGEgdHlwbyBp
biBzdWJqZWN0IChhbGxvY3Rpb24pLgo+Cj4gSXMgc3Bpbm5pbmcgYSB2MiB3b3J0aCBpdD8KPgoK
U3VyZSEgSSdsbCByZXBocmFzZSwgYW5kIHJlc2VuZCEKClRoYW5rcywKQmrDtnJuCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBt
YWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
