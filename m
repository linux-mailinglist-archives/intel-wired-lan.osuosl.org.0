Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B42B31E813
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Feb 2021 10:43:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 14961872F3;
	Thu, 18 Feb 2021 09:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nrptqa80ofG8; Thu, 18 Feb 2021 09:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF386872FA;
	Thu, 18 Feb 2021 09:43:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08E2F1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Feb 2021 09:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 048DF872F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Feb 2021 09:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wHM4LmFYjuWS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Feb 2021 09:43:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0B353872A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Feb 2021 09:43:43 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5aecdc.dynamic.kabel-deutschland.de
 [95.90.236.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id E960520647919;
 Thu, 18 Feb 2021 10:43:40 +0100 (CET)
To: Eryk Rybak <eryk.roch.rybak@intel.com>
References: <20210218111526.71493-1-eryk.roch.rybak@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <2dc11314-8ba0-c26e-a62f-2fe0eebd5097@molgen.mpg.de>
Date: Thu, 18 Feb 2021 10:43:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210218111526.71493-1-eryk.roch.rybak@intel.com>
Content-Language: en-US
Subject: [Intel-wired-lan] Incorrect Date: fields with Intel patch
 submissions (was: [PATCH net] i40e: Fix kernel oops when i40e driver
 removes VF's)
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBFcnlrLCBkZWFyIEludGVsIGZvbGtzLAoKCkl04oCZcyBub3cgdGhlIGhhcHBlbmVkIGFn
YWluLCB0aGF0IEludGVsIHBhdGNoZXMgaGF2ZSB0aW1lc3RhbXBzIGZyb20gdGhlIApmdXR1cmUs
IG1lc3NpbmcgdXAgdGhlIG9yZGVyaW5nIGZvciBwZW9wbGUgc29ydGluZyB0aGVpciBpbmJveCBh
Y2NvcmRpbmcgCnRvIHRoZSBkYXRlLgoKSSBtZW50aW9uZWQgaXQgc2V2ZXJhbCB0aW1lcywgYnV0
IGl0IGtlZXBzIGhhcHBlbmluZy4gQ291bGQgeW91IHBsZWFzZSAKZ2V0IHRvIHRoZSBib3R0b20g
b2YgdGhhdCBwcm9ibGVtIGluIHlvdXIgaW5mcmFzdHJ1Y3R1cmUgYW5kIGZpeCBpdD8KCgpLaW5k
IHJlZ2FyZHMsCgpQYXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
