Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029BC45BEAB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Nov 2021 13:47:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C6DB4014D;
	Wed, 24 Nov 2021 12:47:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K25ILj_h8Dae; Wed, 24 Nov 2021 12:47:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF4384037F;
	Wed, 24 Nov 2021 12:47:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4B9F1BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 12:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1D5C40487
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 12:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YZDw9D9MV58c for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Nov 2021 12:47:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E35D940449
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 12:47:06 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aea8c.dynamic.kabel-deutschland.de
 [95.90.234.140])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A2EC761E5FE02;
 Wed, 24 Nov 2021 13:47:03 +0100 (CET)
Message-ID: <6f95e1de-6c35-76e5-eb83-68b60dc55c05@molgen.mpg.de>
Date: Wed, 24 Nov 2021 13:47:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Shiraz Saleem <shiraz.saleem@intel.com>
References: <20211124124136.1776-1-shiraz.saleem@intel.com>
 <20211124124136.1776-2-shiraz.saleem@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20211124124136.1776-2-shiraz.saleem@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 2/2] net/ice: Remove unused enum
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
Cc: intel-wired-lan@lists.osuosl.org, Parav Pandit <parav@nvidia.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBTaGlyYXosCgoKQW0gMjQuMTEuMjEgdW0gMTM6NDEgc2NocmllYiBTaGlyYXogU2FsZWVt
Ogo+IEZyb206ICJTaGlyYXogU2FsZWVtIiA8c2hpcmF6LnNhbGVlbUBpbnRlbC5jb20+Cj4gCj4g
UmVtb3ZlIGljZV9kZXZsaW5rX3BhcmFtX2lkIGVudW0gYXMgaXRzIG5vdCB1c2VkLgoKUGxlYXNl
IGFkZCB0aGUgbmFtZSBgaWNlX2RldmxpbmtfcGFyYW1faWRgIHRvIHRoZSBjb21taXQgbWVzc2Fn
ZSBzdW1tYXJ5LgoKW+KApl0KCgpLaW5kIHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
