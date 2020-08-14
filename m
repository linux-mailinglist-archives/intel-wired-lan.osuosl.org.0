Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7F32442E5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Aug 2020 04:03:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C18CF24C2A;
	Fri, 14 Aug 2020 02:03:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cKXOdl+P+HHL; Fri, 14 Aug 2020 02:03:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B6DE122721;
	Fri, 14 Aug 2020 02:03:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 99C8F1BF3C2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 02:03:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79525204FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 02:03:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OPc7Z+6g742k for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Aug 2020 02:03:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id BCCFE204F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 02:03:40 +0000 (UTC)
IronPort-SDR: FKM+WT/Vh3K0PfvLReH3ZgsmR9WwA/Scj6nI9UUdl1jtfKFiZnweGYd8BYe+jArqEMa39SRvJq
 0jYc1HNNgNYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="133868860"
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="133868860"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 19:03:39 -0700
IronPort-SDR: j+k89qlPVgW+Oy9gSGvf/hoCj2gk7P5GbslY/52n24BCdsYnM2ZbXufmQ8KQqIc0drydCvlCUe
 cf0TwS/UB2sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="369778553"
Received: from unknown (HELO fmsmsx605.amr.corp.intel.com) ([10.18.84.215])
 by orsmga001.jf.intel.com with ESMTP; 13 Aug 2020 19:03:39 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 19:03:39 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Aug 2020 19:03:39 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx122.amr.corp.intel.com (10.18.125.37) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 13 Aug 2020 19:03:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 13 Aug 2020 19:03:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GeDEvEVg19Tp/nXwfvHQJiDja2RCU/GNjq4yXQCQNJeuGCrKBvZ1vMUz4pEXA2x8lXjuQPVVKg4JVt6p9GV2Gg2zRUhzaxgdRj0QuPe5M9WXhLzEJojS9vlBUxIPrh9z602ZXzfUPJRL+Ga0F/dGMGPexCbBR5XOXZ+a4UKV+s7OihoKkVHw05YaMs+Suz5Vq/lVHAA6qtjDAIYYg4dK5r02hpfDUrG9xVWfZx04veOWOFT4FxNvyShrQb+zICXz7/e6d0MD/eQMnmfFPsJu2Xqf4EgO6sCCmQldAcqVcz49deh2ZLrDBaNO0kF1CaUGcDu43HXr+WGRBUV0jDYPOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V+efUmJ8CMq6tRUpfyXK+1e44C+X/I8MxiVr9y58Qxc=;
 b=F3lcXVEOq9lOU9XO8VjivvJmLt86KKXR/EwIYxVnaBAxY8E8DXzZGaxeCkIY88cBTv8kEWXfM8aGx8Ndfq3epdw8JJ14HHbFftiS/2sv+U7wDKJyNJym8ZYE+DfeLYzG9AGcP9QxFDAQ/6agu2fCP+EjMBneeBgD9GUem0RNcX5dfzia2yG/sGW5DTKQC41z0oAhVNuXaBnoq4NANy5o+40JqMAg7ScEu85bJbA+UBXXsUJQ0BYHbMwf2xowWkKg/Mzhmee5LOZrI4E4YNVKprbCGHi3BhlbJwYEnlWHC9qu9mM+XL+VRHnnEdXkzIpCgSSDgtNMIxfk+V8Vzn4Bdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V+efUmJ8CMq6tRUpfyXK+1e44C+X/I8MxiVr9y58Qxc=;
 b=TX9puA5dJKObVX0/2kPRUBEUKE/OmvEeKIayKCmbG0seq0J/ifDvaPKiUfab7UZbRb1+fwP/piG7qnv7N09GCDpmAqypk9lWB23PXyRBzpglZp7ct8rZ4XLO+7njSZlkyr6C7eWS1BgNp3KHbdDZe6gOqgoHcBntBH9QrHGuwgo=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1913.namprd11.prod.outlook.com (2603:10b6:3:10b::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.20; Fri, 14 Aug 2020 02:03:37 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3261.026; Fri, 14 Aug 2020
 02:03:37 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/3] igc: Clean RX descriptor error
 flags
Thread-Index: AQHWb1p3gPcJogfkfECrrIfXmotwlKk232lQ
Date: Fri, 14 Aug 2020 02:03:37 +0000
Message-ID: <DM6PR11MB2890BC434D3ED3EEF4609CADBC400@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200810210832.34699-1-andre.guedes@intel.com>
In-Reply-To: <20200810210832.34699-1-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.171.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ada4cf26-b07c-4dfe-112b-08d83ff64244
x-ms-traffictypediagnostic: DM5PR11MB1913:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1913BFCB5C4D9498160D74A0BC400@DM5PR11MB1913.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8c2XakhvdZRjDjUhxmAzWNaDxUP6DWH9E6d/NLrl9lWpvI09gmXhd8W1zAnteQylt7UH0sXoKM8pAGKzRGCztmlGemeIpZfZe27CQulw1Tl8HDM7DkkXHtg5fgfdzdJodA2eOZSqOde0MXi6ggHKQaSqaKpbyDbmNB6M3VGXiXJ5QWyoeHBMwYZIOulcMbJmsdQMb6mxH4f/Czav+0Nsvd2em5rDNGvY8fxvlS+R1eFjFJJmn/udYKFAwPPJg2TCp8yvGfn2RVgwe4BXKvGAWOLmkcPV/Q4Nj9tKb0qKExZRlYffSTze+epyMCoFlRZ/nRnMJwEUdtX59ivvdGZk6Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(136003)(366004)(396003)(66446008)(76116006)(66556008)(5660300002)(66946007)(64756008)(66476007)(4744005)(55016002)(83380400001)(52536014)(33656002)(9686003)(478600001)(71200400001)(26005)(186003)(2906002)(6506007)(7696005)(110136005)(316002)(53546011)(86362001)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: H3xk/ESnK9OhJ4b1wfITWhupW1TyTxkJmLEwu3aqjZ2N6cofYEaSs57t+Vw/ZXrSD5M6f7SmQbMq65wecwYdzVgDcUeiqKEz2RTDLRYmC/0UAq24wSy+zEcyKDCYyqZgUaqOK4i+g6dCi29iR6iq8i+1DTYeyORMegX/eEVke0ozjWIApnN9efDpPyZDEYr3hamS/p2qCls1bL3OoQQGZiQxSNq1y6AOsRQkBRDWuVCWLEJSRSj5zCQfEzfM+clmqVOnbsT/uohD9h7ExSEuVArqlN47EieAMJqiGpb34SSudH4mTQ5Hgfbp4zOc4An7QTUZkcZgYUMRo4+IdbuYgDf2CgMcZ3/u5/NNrBX4w/PeaSOeHlJXgNaTRQZvmUPCSsd8zSe0sGcA0t9UAIC8FpnqbymTIOGWyyNSEvhpTmJ3ENYDY/JPR3SUJBV6lq9iAKkHtHZxCww/NaowStmyLKq8ymo4avH9qpLMxcPIdi3zE38BHf26J2it/O9J4Mzn6BOG6DEJLHwAMacBT5oyssUCgn2ZwOSH+EOHdDJ3shgWLxOZZ50XP5NLp6DBmjXcSmGVtL68H5n/DurLU7ooS13hCwvqNbVMVmUax9oRWargsfa5CvIgah65r5v27+kmLbS+pldXYfSpxwxST/HpUw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ada4cf26-b07c-4dfe-112b-08d83ff64244
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2020 02:03:37.7697 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fF9cBHgXwCA8L/FrBdRZGN/Eg8ivgiXSJgHsOkXvrPvFA+w+8Z50r9jP2gyZfHtUQewu/OtcpVeu/pU/EVkvHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1913
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/3] igc: Clean RX descriptor error
 flags
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Monday, August 10, 2020 2:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 1/3] igc: Clean RX descriptor error flags
> 
> I225 advanced receive descriptor doesn't have the following extend error
> bits: CE, SE, SEQ, CXE. In addition to that, the bit TCPE is called L4E
> in the datasheet.
> 
> This patch cleans up the code accordingly, and gets rid of the macro
> IGC_RXDEXT_ERR_FRAME_ERR_MASK since it doesn't make much sense
> anymore.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h | 14 +-------------
>  drivers/net/ethernet/intel/igc/igc_main.c    |  5 ++---
>  2 files changed, 3 insertions(+), 16 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
