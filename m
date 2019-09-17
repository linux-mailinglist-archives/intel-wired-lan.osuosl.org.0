Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE99EB4C50
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Sep 2019 12:55:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3F7C720509;
	Tue, 17 Sep 2019 10:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rFoXeGbkkOcK; Tue, 17 Sep 2019 10:55:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3171920762;
	Tue, 17 Sep 2019 10:55:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C6231BF38E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2019 10:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 025C7204CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2019 10:55:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QsW08XGkLtUZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Sep 2019 10:55:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id E827B20509
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Sep 2019 10:55:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 03:55:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="191360143"
Received: from gkarolko-mobl.ger.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.252.40.172])
 by orsmga006.jf.intel.com with ESMTP; 17 Sep 2019 03:54:59 -0700
To: Maxim Mikityanskiy <maxtram95@gmail.com>,
 Kevin Laatz <kevin.laatz@intel.com>
References: <20190905011144.3513-1-kevin.laatz@intel.com>
 <CAKErNvpe3htU-ETe0y0XQ=SwY047qc3Z3=aHN6g2BbkoGHNNUQ@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
Message-ID: <b1d2a07d-20cc-7410-a296-d5245a2ffe54@intel.com>
Date: Tue, 17 Sep 2019 12:54:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKErNvpe3htU-ETe0y0XQ=SwY047qc3Z3=aHN6g2BbkoGHNNUQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next] i40e: fix xdp handle
 calculations
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
Cc: maximmi@mellanox.com, daniel@iogearbox.net, netdev@vger.kernel.org,
 ciara.loftus@intel.com, ast@kernel.org, intel-wired-lan@lists.osuosl.org,
 jonathan.lemon@gmail.com, bruce.richardson@intel.com, bpf@vger.kernel.org,
 magnus.karlsson@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAxOS0wOS0xNyAxMjo0OCwgTWF4aW0gTWlraXR5YW5za2l5IHdyb3RlOgo+IEhpLCBpdCBs
b29rcyB0byBtZSB0aGF0IGhlYWRyb29tIGlzIHN0aWxsIGJyb2tlbiBhZnRlciB0aGlzIGNvbW1p
dC4KPiBpNDBlX3J1bl94ZHBfemMgYWRkcyBpdCBhIHNlY29uZCB0aW1lLCBpLmUuOgoKSW5kZWVk
LCBidXQgQ2lhcmEgZml4ZWQgdGhhdCBpbiB0aGlzIHNlcmllcyBbMV0uIFRoYW5rcyBmb3IgcmV2
aWV3aW5nCnRoZSBwYXRjaCEKCkNoZWVycywKQmrDtnJuCgpbMV0gCmh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2JwZi8yMDE5MDkxMzEwMzk0OC4zMjA1My0xLWNpYXJhLmxvZnR1c0BpbnRlbC5jb20v
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
