Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACDF4C41E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 01:30:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9341D21507;
	Wed, 19 Jun 2019 23:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1mpHxJc3uHGP; Wed, 19 Jun 2019 23:30:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9093D21503;
	Wed, 19 Jun 2019 23:30:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1EE861BF29D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 19D8586912
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:30:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P48TZsa8-r3m for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jun 2019 23:30:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6FC64868B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jun 2019 23:30:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 16:30:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="153945425"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga008.jf.intel.com with ESMTP; 19 Jun 2019 16:29:59 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Jun 2019 16:29:59 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.13]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 16:29:59 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: Re: [next-queue,v2] fm10k: add missing field initializers to
 TLV attributes)
Thread-Index: AdUm9uBKk/Nel8fHSvaML7LEUxnPKQ==
Date: Wed, 19 Jun 2019 23:29:58 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3F8D88@ORSMSX104.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWNkMjAwNjctNWUzOC00MTcwLTlmNWMtNWI2YzI2ZGRhNTA0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicEhlRUQycmlpQnFWTlNDa1hZOWpFUGZ6SCtMb1IzajlScmZSYmZOS0hFR25cL0VMZHBjWXBocUpFT0FycDh5ZGkifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue,
 v2] fm10k: add missing field initializers to TLV attributes)
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

>From: Jacob Keller <jacob.e.keller@intel.com>
>To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
>Date: Tue, 19 Feb 2019 14:26:27 -0800
>Message-Id: <20190219222627.28699-1-jacob.e.keller@intel.com>
>X-Mailer: git-send-email 2.18.0.219.gaf81d287a9da
>Subject: [Intel-wired-lan] [next-queue v2] fm10k: add missing field
> initializers to TLV attributes)
>X-BeenThere: intel-wired-lan@osuosl.org
>X-Mailman-Version: 2.1.29
>Precedence: list
>List-Id: Intel Wired Ethernet Linux Kernel Driver Development
> <intel-wired-lan.osuosl.org>
>List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
> <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
>List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
>List-Post: <mailto:intel-wired-lan@osuosl.org>
>List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
>List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>, 
> <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
>MIME-Version: 1.0
>Content-Type: text/plain; charset="us-ascii"
>Errors-To: intel-wired-lan-bounces@osuosl.org
>Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
>
>Add the missing field initializers for a couple of the TLV attribute
>macros. This resolves the last few -Wmissing-field-initializers warnings
>for the fm10k Linux driver.
>
>Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>---
> drivers/net/ethernet/intel/fm10k/fm10k_tlv.h | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
