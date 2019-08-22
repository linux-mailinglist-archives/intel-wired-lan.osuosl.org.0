Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031949A9D0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2019 10:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC5B888501;
	Fri, 23 Aug 2019 08:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NpDBNGC7cwPl; Fri, 23 Aug 2019 08:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B850F884F3;
	Fri, 23 Aug 2019 08:12:39 +0000 (UTC)
X-Original-To: Intel-wired-lan@lists.osuosl.org
Delivered-To: Intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C4351BF97E
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 08:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 59C1985A1E
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 08:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IVx450-LvjXz for <Intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2019 08:12:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DC45188466
 for <Intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 08:12:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 10:19:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="203490520"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga004.fm.intel.com with ESMTP; 22 Aug 2019 10:19:17 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 22 Aug 2019 10:19:17 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 22 Aug 2019 10:19:16 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Thu, 22 Aug 2019 10:19:16 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "Intel-wired-lan@lists.osuosl.org" <Intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 net-next 7/7] ip6tlvs: Validation of
 TX Destination and Hop-by-Hop options
Thread-Index: AQHVVt/MP/TJG7qv6EaAe+9h0yJw0qcHbZ+g
Date: Thu, 22 Aug 2019 17:19:16 +0000
Message-ID: <47586f3eabf94339b5b74160cc5c7ee8@intel.com>
References: <1566254665-5200-1-git-send-email-tom@herbertland.com>
 <1566254665-5200-8-git-send-email-tom@herbertland.com>
In-Reply-To: <1566254665-5200-8-git-send-email-tom@herbertland.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTNkZDQzMTAtZjE1My00NzgwLThmNmUtOWUxNmVlOWZmZmMxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUnRqeWN3aVdzUlVkVzdJTWllQlJLSUpGNnBnQUhyb3BlbmFaYnR1WFdEclp1YkpGdXNzNGhZQU5YNzBhcjJyUyJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 7/7] ip6tlvs: Validation
 of TX Destination and Hop-by-Hop options
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
> Subject: [Intel-wired-lan] [PATCH v3 net-next 7/7] ip6tlvs: Validation of TX
> Destination and Hop-by-Hop options
> 
> From: Tom Herbert <tom@quantonium.net>
> 
> Validate Destination and Hop-by-Hop options. This uses the information in
> the TLV parameters table to validate various aspects of both individual TLVs
> as well as a list of TLVs in an extension header.
> 
> There are two levels of validation that can be performed: simple checks and
> deep checks. Simple checks validate only the most basic properties such as
> that the TLV list fits into the EH. Deep checks do a fine grained validation that
> includes perferred ordering, length limits, and length alignment.
> 
> With proper permissions set in the TLV parameter table, this patch allows
> non-privileged users to send TLVs. Given that TLVs are open ended and
> potentially a source of DOS attack, deep checks are performed to limit the
> format that a non-privileged user can send.
> If deep checks are enabled, a canonical format for sending TLVs is enforced
> (in adherence with the robustness principle). A TLV must be well ordered
> with respect to the preferred order for the TLV.
> Each TLV must be aligned as described in the parameter table. Minimal
> padding (one padding TLV) is used to align TLVs. The length of the extension
> header as well as the count of non-padding TLVs is checked against
> max_*_opts_len and max_*_opts_cnt. For individual TLVs, length limits and
> length alignment is checked.
> 
> Signed-off-by: Tom Herbert <tom@herbertland.com>
> ---
>  include/net/ipeh.h        |  22 +++
>  net/ipv6/datagram.c       |  51 +++++--
>  net/ipv6/exthdrs_common.c | 382
> ++++++++++++++++++++++++++++++++++++++++++++++
>  net/ipv6/ipv6_sockglue.c  |  39 ++---
>  4 files changed, 455 insertions(+), 39 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
