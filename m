Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7069F2DA5E7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Dec 2020 03:01:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DB49B86A14;
	Tue, 15 Dec 2020 02:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bJrUBG3PoGgC; Tue, 15 Dec 2020 02:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3783286A50;
	Tue, 15 Dec 2020 02:00:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BF901BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 02:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 37A9B86F8D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 02:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jGDWfQmFfn2r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Dec 2020 02:00:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B478C86F89
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Dec 2020 02:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607997608;
 bh=fXFFllEAKOMgoTnpJVYTId/ziDzVTmSoFEQXhGG3OBk=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=WV27/sOI1gUggbGXSmDn1fEdNeRXoeKE1cFR2k9tp2of1YpuLL93fyP8KyCglmFWl
 dsfWW3yEklYEjZM0BO/TTKUx4l0JHAEE8xrGicWzaRAymHfMd2qVcbXEBBuvZ1ATZh
 Rgtojp3mX0mii0tjNsTv1z95EHJxEdhWO4Qn9mgiPpT8bKB23fYT623y+ROquFlkVC
 fjS7GUbgBL3cogv//TzgMl7+NaZCfUV0pRp51SgQW987SvJrjJiX5jiqi5o0CVQfRd
 SevPnU7nrtTkryj3J7V0O1Hi0SGUCLkRocJqp4q3W5owW58THC4bWW94Ilwz8+KjFC
 KhyEMfb7pDVYQ==
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <160799760821.15807.11906942397903153665.git-patchwork-notify@kernel.org>
Date: Tue, 15 Dec 2020 02:00:08 +0000
References: <20201211085410.59350-1-bjorn.topel@gmail.com>
In-Reply-To: <20201211085410.59350-1-bjorn.topel@gmail.com>
To: =?utf-8?b?QmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAZ21haWwuY29tPg==?=@ci.codeaurora.org
X-Mailman-Approved-At: Tue, 15 Dec 2020 02:00:58 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ice,
 xsk: Move Rx allocation out of while-loop
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG86CgpUaGlzIHBhdGNoIHdhcyBhcHBsaWVkIHRvIG5ldGRldi9uZXQtbmV4dC5naXQgKHJl
ZnMvaGVhZHMvbWFzdGVyKToKCk9uIEZyaSwgMTEgRGVjIDIwMjAgMDk6NTQ6MTAgKzAxMDAgeW91
IHdyb3RlOgo+IEZyb206IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KPiAK
PiBJbnN0ZWFkIGRvaW5nIHRoZSBjaGVjayBmb3IgYWxsb2NhdGlvbiBpbiBlYWNoIGxvb3AsIG1v
dmUgaXQgb3V0c2lkZQo+IHRoZSB3aGlsZSBsb29wIGFuZCBkbyBpdCBldmVyeSBOQVBJIGxvb3Au
Cj4gCj4gVGhpcyBjaGFuZ2UgYm9vc3RzIHRoZSB4ZHBzb2NrIHJ4ZHJvcCBzY2VuYXJpbyB3aXRo
IDE1JSBtb3JlCj4gcGFja2V0cy1wZXItc2Vjb25kLgo+IAo+IFsuLi5dCgpIZXJlIGlzIHRoZSBz
dW1tYXJ5IHdpdGggbGlua3M6CiAgLSBbdjIsbmV0LW5leHRdIGljZSwgeHNrOiBNb3ZlIFJ4IGFs
bG9jYXRpb24gb3V0IG9mIHdoaWxlLWxvb3AKICAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvbmV0
ZGV2L25ldC1uZXh0L2MvNWJiMGM0YjVlYjYxCgpZb3UgYXJlIGF3ZXNvbWUsIHRoYW5rIHlvdSEK
LS0KRGVldC1kb290LWRvdCwgSSBhbSBhIGJvdC4KaHR0cHM6Ly9rb3JnLmRvY3Mua2VybmVsLm9y
Zy9wYXRjaHdvcmsvcHdib3QuaHRtbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
