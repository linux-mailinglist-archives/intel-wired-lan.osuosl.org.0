Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B24812498AA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Aug 2020 10:52:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 51B2D2094B;
	Wed, 19 Aug 2020 08:52:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VX8KZRzlM21T; Wed, 19 Aug 2020 08:52:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 246F82094E;
	Wed, 19 Aug 2020 08:52:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4224F1BF83E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 08:52:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1DF222094B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 08:52:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CmsmgpGD09KY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Aug 2020 08:52:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 4A9DC204B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Aug 2020 08:52:46 +0000 (UTC)
IronPort-SDR: +kRsiHmPnPo6G9FYRYT6K6rC48CdIYhkdmf02kSWTx/CjykDydC37Jb1DkcqJWhvoRP0xd11zt
 4gUtnm742HHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="142702947"
X-IronPort-AV: E=Sophos;i="5.76,330,1592895600"; d="scan'208";a="142702947"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 01:52:45 -0700
IronPort-SDR: O3igYNVHERIrPEv+6BPrS2p5Ge2MIOT25tEwj5DhNH39mzqpsLzydvBO39XZCodjqWu7rRLW+r
 yplyU9mxvvIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,330,1592895600"; d="scan'208";a="497168072"
Received: from skirillo-mobl2.ccr.corp.intel.com (HELO
 btopel-mobl.ger.intel.com) ([10.249.32.199])
 by fmsmga006.fm.intel.com with ESMTP; 19 Aug 2020 01:52:42 -0700
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>
To: "Li,Rongqing" <lirongqing@baidu.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?=
 <bjorn.topel@gmail.com>
References: <1594967062-20674-1-git-send-email-lirongqing@baidu.com>
 <CAJ+HfNi2B+2KYP9A7yCfFUhfUBd=sFPeuGbNZMjhNSdq3GEpMg@mail.gmail.com>
 <4268316b200049d58b9973ec4dc4725c@baidu.com>
 <83e45ec2-1c66-59f6-e817-d4c523879007@intel.com>
 <c3695fc71ca140d08a795bbd32d8522f@baidu.com>
 <c691e3d2-8b16-744c-8918-5be042bd37dc@intel.com>
Message-ID: <7d5ec101-b14c-ffda-053b-8a1ab46bf265@intel.com>
Date: Wed, 19 Aug 2020 10:52:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <c691e3d2-8b16-744c-8918-5be042bd37dc@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] 
 =?utf-8?b?562U5aSNOiDnrZTlpI06ICBbUEFUQ0ggMC8y?=
 =?utf-8?q?=5D_intel/xdp_fixes_for_fliping_rx_buffer?=
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Netdev <netdev@vger.kernel.org>, Maciej <maciej.machnikowski@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMC0wOC0xOSAxMDozMSwgQmrDtnJuIFTDtnBlbCB3cm90ZToKWy4uLl0KPiAKPiBCdXQg
cGxlYXNlLCB0cnkgdG8gcmVwcm9kdWNlIHdpdGggYSBuZXdlciBrZXJuZWwuCj4KCkFsc28sIHlv
dSBhcmUgKnN1cmUqIHRoYXQgeW91J3JlIHRvdWNoaW5nIHN0YWxlIGRhdGE/IEhhdmUgeW91IHRy
aWVkIApydW5uaW5nIHdpdGggQ09ORklHX0RFQlVHX1BBR0VBTExPQyBhbmQgQ09ORklHX1BBR0Vf
UE9JU09OSU5HPwoKCkJqw7ZybgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
