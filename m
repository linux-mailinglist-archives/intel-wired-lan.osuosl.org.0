Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE710E995C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2019 10:43:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 948CC86C5C;
	Wed, 30 Oct 2019 09:43:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G7fWTh8TxF9I; Wed, 30 Oct 2019 09:43:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 589F0869CA;
	Wed, 30 Oct 2019 09:43:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 037501BF31E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2019 09:43:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F31682034B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2019 09:43:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yFDcfKaVxORf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2019 09:43:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 921A620336
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2019 09:43:53 +0000 (UTC)
Received: from [10.17.212.211] (unknown [195.37.61.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 13D4920225AEF;
 Wed, 30 Oct 2019 10:43:50 +0100 (CET)
To: Sasha Neftin <sasha.neftin@intel.com>
References: <20191030090848.20842-1-sasha.neftin@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <090fd6fa-bccd-ff67-8326-6eed7a9d5d56@molgen.mpg.de>
Date: Wed, 30 Oct 2019 10:43:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191030090848.20842-1-sasha.neftin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Add scatter gather support
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTYXNoYSwKCgpPbiAzMC4xMC4xOSAxMDowOCwgU2FzaGEgTmVmdGluIHdyb3RlOgo+IFNj
YXR0ZXIgZ2F0aGVyIGlzIHVzZWQgdG8gZG8gRE1BIGRhdGEgdHJhbnNmZXJzIG9mIGRhdGEgdGhh
dCBpcyB3cml0dGVuIHRvCj4gbm9uY29udGlndW91cyBhcmVhcyBvZiBtZW1vcnkuCj4gVGhpcyBw
YXRjaCBlbmFibGUgc2NhdHRlciBnYXRoZXIgc3VwcG9ydC4KCmVuYWJsZSpzKgoKRG8geW91IGhh
dmUgbnVtYmVycywgaWYgYW5kIGhvdyB0aGlzIGltcHJvdmVzIHBlcmZvcm1hbmNlPwoKSG93IGNh
biB0aGlzIGJlIHRlc3RlZD8KClvigKZdCgoKS2luZCByZWdhcmRzLAoKUGF1bApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
