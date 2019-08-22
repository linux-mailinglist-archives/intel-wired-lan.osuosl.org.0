Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 689EF9A9BF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2019 10:11:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 006A787C65;
	Fri, 23 Aug 2019 08:11:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qcmz31rNrswO; Fri, 23 Aug 2019 08:11:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF47A87C89;
	Fri, 23 Aug 2019 08:11:20 +0000 (UTC)
X-Original-To: Intel-wired-lan@lists.osuosl.org
Delivered-To: Intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E4C31BF2F7
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 08:11:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 78402203B2
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 08:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0i2-k6fStc0b for <Intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2019 08:11:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 5AB072037A
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 08:11:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 10:17:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="262929615"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga001.jf.intel.com with ESMTP; 22 Aug 2019 10:17:46 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 22 Aug 2019 10:17:46 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 22 Aug 2019 10:17:45 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Thu, 22 Aug 2019 10:17:45 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "Intel-wired-lan@lists.osuosl.org" <Intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 net-next 4/7] ip6tlvs: Registration
 of TLV handlers and parameters
Thread-Index: AQHVVt+9zxmh3yhyxU6D/RedDtybQqcHbTLQ
Date: Thu, 22 Aug 2019 17:17:45 +0000
Message-ID: <6fc3872624214c46811a27a81c13a8c7@intel.com>
References: <1566254665-5200-1-git-send-email-tom@herbertland.com>
 <1566254665-5200-5-git-send-email-tom@herbertland.com>
In-Reply-To: <1566254665-5200-5-git-send-email-tom@herbertland.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzRlNjgxNGUtYjk4NS00N2ZmLWExYmItMjRkMjVmYzg3MWU2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY0xFeUNLK0FNNjd5SVV2MnoxVVRjbnNFN09aRU1lXC9qbGpUd3dScXBERXhqN3dZMXNiTElldkZcL0xKTUhFcDByIn0=
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 4/7] ip6tlvs: Registration
 of TLV handlers and parameters
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Tom Herbert
> Sent: Monday, August 19, 2019 3:44 PM
> To: Intel-wired-lan@lists.osuosl.org
> Cc: Tom Herbert <tom@herbertland.com>; Tom Herbert
> <tom@quantonium.net>
> Subject: [Intel-wired-lan] [PATCH v3 net-next 4/7] ip6tlvs: Registration of TLV
> handlers and parameters
> 
> From: Tom Herbert <tom@quantonium.net>
> 
> Create a single TLV parameter table that holds meta information for IPv6
> Hop-by-Hop and Destination TLVs. The data structure is composed of a 256
> element array of u8's (one entry for each TLV type to allow O(1) lookup).
> Each entry provides an offset into an array of TLV proc data structures which
> follows the array of u8s. The TLV proc data structure contains parameters and
> handler functions for receiving and transmitting TLVs. The zeroth element in
> the TLV proc array provides default parameters for TLVs.
> 
> A class attribute indicates the type of extension header in which the TLV may
> be used (e.g. Hop-by-Hop options, Destination options, or Destination
> options before the routing header).
> 
> Functions are defined to manipulate entries in the TLV parameter table.
> 
> * tlv_{set|unset}_proc set a TLV proc entry (ops and parameters)
> * tlv_{set|unset}_params set parameters only
> 
> Receive TLV lookup and processing is modified to be a lookup in the TLV
> parameter table. An init table containing parameters for TLVs supported by
> the kernel is used to initialize the TLV table.
> 
> Signed-off-by: Tom Herbert <tom@herbertland.com>
> ---
>  include/net/ipeh.h         | 107 ++++++++++++++++--
>  include/net/ipv6.h         |   3 +
>  include/uapi/linux/ipeh.h  |  16 +++
>  net/ipv6/exthdrs.c         |  14 ++-
>  net/ipv6/exthdrs_common.c  | 271
> +++++++++++++++++++++++++++++++++++++++++----
>  net/ipv6/exthdrs_options.c |  63 +++++++----
>  6 files changed, 421 insertions(+), 53 deletions(-)  create mode 100644
> include/uapi/linux/ipeh.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
