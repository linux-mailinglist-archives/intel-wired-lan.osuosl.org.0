Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4771C20E1
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:49:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 816AE25AA6;
	Fri,  1 May 2020 22:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sETVJ05sRNcy; Fri,  1 May 2020 22:49:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5889C262FC;
	Fri,  1 May 2020 22:49:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A758A1BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A32C488505
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:49:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4xjoS-hNVFkh for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:49:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F2FF68858F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:49:04 +0000 (UTC)
IronPort-SDR: H07nmh2zKJ4tcD+QpiBYg4m6KWXNO3NH9oZFpIRpvpfm4pcMeLttLX0Q+O+VuxAhnjQtTbjCUb
 1qT188eO6t+Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:49:04 -0700
IronPort-SDR: Zgzd54afCECeff2sBqFvCV1rLRd5A/W2Q5R/FwjJEAz0mYOLxpStca2dv//9jJZif2qYKD5GXm
 v9UVzwjcC19A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="262219647"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga006.jf.intel.com with ESMTP; 01 May 2020 15:49:04 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:49:03 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.57) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 1 May 2020 15:49:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=avr5h3VaG77e+2vi6/q0zXj8Un+cmCjMhV1dFeK2StKQV03WdZCfs5kcKiz3OTx4OJTYFmsbO6adVcHVYHW7u2mli/EYJhGsYnMF0tlx+MUM+0UFCejqOVAAqrk0mziwXYE6BaiOLIrkdzZvjnzKO6axw0XbbROsIoqXkOZaG8hNcHC4YB4qJoBFOiI9rpS+UhxOsno6BY4luR3ke9CvHCNO9QBCv5Cxk2LR6jx5FiBdr1qeI5EV0LGbj+pksZFfdRyBWUA8tcny3KN4gh/MRISFibcNMtyideMJdoNBplD7yedIjMwmR7/Ra4XcOCfg1pvYRSjsoo+6irFq2SZxGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H9zupxrgXDrVWWskscDj3mTta4HTcoxBS92Zy+0YeOE=;
 b=mIH1CBA9XMPzP2bwAiMdKRfn5xDvLRYzDRBYJ6ZSSlf+4DVhvqEQvpcxlzz05SK/XtqSkRjAc5S92j4K9Os530iK1CmcWiMcSaE46+dsL3FoGqKmWoChxD6EMKXp96I2SjzrstiyRDMvIDUo42AOJewnk0s5cJ2OK+/LwAZ86HP+A4SR+2mVApKqy3LzIu5YexX8dUFxKCeUieCQMTLKB6kr+g2H9AmR5AqcP27wDkKpeCr+yu9+M5TeMQSuSm/xGj+32rgnKwPbFNGYMEBtWS0G1xv/r6aXkb7tSD7MF4bxzwae5luzao9cFuiavCOYLf12/eYfdom8wT3ioGHd1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H9zupxrgXDrVWWskscDj3mTta4HTcoxBS92Zy+0YeOE=;
 b=p0GSCeCKQvSsFRamRI0udKDiDV1j9M01nhBB5kZOWL2oNH6tySkqECAs824G+u9MS2R1sKQny4zC6Kgqwlhuh7n3TJN/T3gjZ/GHSu2B5iPjpCR6umxWH5nTDCrKw0akzmAuuuSSpKbXS68G/msSQ8189zdIvs5c0WPgnGnIgiM=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4299.namprd11.prod.outlook.com (2603:10b6:5:1df::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 22:49:00 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:49:00 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 18/19] igc: Change
 adapter->nfc_rule_lock to mutex
Thread-Index: AQHWGnWUj+LoROWLBkq2lmtRDpsYIaiT4FZQ
Date: Fri, 1 May 2020 22:49:00 +0000
Message-ID: <DM6PR11MB2890BD31E8311A95FA5860F2BCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-19-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-19-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 81694f0c-20a6-459a-40e8-08d7ee21d732
x-ms-traffictypediagnostic: DM6PR11MB4299:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB42999A11B21F9E3C56C990B4BCAB0@DM6PR11MB4299.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uUjFaXwFgsRqmxSOU88dX/3gdmMFQ2Ep33r9NdF55u2visCciaEiMoCwYc/KWj/NhhlWjby0efVBRtLMqbNJ+JhNS51ACbnIX7lNXbE3ZQkF/Krr2O9I5mPnHxFvNCJucadX7DSNfLbG21T/C3TVCidTDgZAt/GcMvIrvDj5Y93EFezfcxBXNBapfDJR5wI+Ek1XN9CSRd/25SdG6BWx+xHc1scrnIgsjRsm74wEghQgDwvhr3t9Gw32bkxB9ZDVArdt2NohcUzXxotokV5gHxUsfo6YvLw/lQAPg4fgjZKwVBXGEdAf+BrQjPC2yopHlDkbx60kDJcQ1jh6/XoDSpemClP/oSnmFGZ5O3BenDnAQLEgKmPU2mT2rJVpjB9ydF0b7cankmqTOqf1PwqVaUWldUYnQICiciC+W3BQPIG58RJv7C7fuMRs4sakFGL4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(33656002)(186003)(26005)(71200400001)(2906002)(76116006)(5660300002)(86362001)(52536014)(66946007)(66476007)(66556008)(64756008)(498600001)(53546011)(7696005)(9686003)(8676002)(110136005)(6506007)(55016002)(66446008)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Qi/HPCLyYeanzQxifVL/5GeuEnihE1204hQMVhogIgSZm9GGWKKvd5OQFsqiGxWIV3ES7AQ/HviAxCpY1WI04WFd6dH3DrfwdPeM7kpUOj8R6v+tlH/M1YkfpViPYygK0nUuJv3h1fwf8uPm9gtWiGUGunyeWarseIyRs5H/2BXhhHceep1CYF1deyG2CgQllv5WpvrtBGxo0jRA+Bl/8sk1uTIeP+pTrB7RMigzBEdjyiM4ON+YJCM9/y9W5C3JxzmJRNUHizRflcvF566Q7EXFcnnjDbVgki5x1vmMBlxbGT/elKjfa7faqLylLHnk2JdAqOvwxsYXhF2UnFvpSnHBHh30roEUCzBA0HNr0gGdLiqAVPOBLxZM4M8+/QmMPP0ucG3aUgSIcHEeU7VQYqK5UohUFxYr6SaWW2m4pNUKFQmTyd0r9g95BRKTWNXbKDD56h9Qc9ccRWMj2mlMP1msIrHD3610Yzlx0Tc7qODkrD0GFFt5x8NoPXj4E2rh2k7mwL4nzOiLiI3LcHAFh9trkbt2WW67LqTannOoz1Ecp827RR0MNRwIV1E2MOkadD3ABQ7oWXAyd5ZDTKFkZIHAs+5xP4k8wrkkrVUEgRDu0zvpl2AnS2IqPjBqYI1qr86eIH7nuf+v0nO8YFaPelL9PMrls+nIG5KQVx79od/85UjaigAoJVgiqBI2o/GGLiRwhEGq6zlQHEeUAGpZnDvmhtNzOm03w9Vjop1lyVKC9z0BvlVcJxm9jmcvEOH3Bn9H22XdIR8nB5v2q7jfdTtZ7s/HKw3nzqeI/xvPZdKeydOMZcnUYSGBBNjw0eGX
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 81694f0c-20a6-459a-40e8-08d7ee21d732
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:49:00.7001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iTErWZ65vOBElogRjGk9v/NglZK3IymdYBPBeClFaXAa02rWxJaKAzcG3etfFsr7hTGLOtHq4xX1pAZTxw0o/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4299
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 18/19] igc: Change
 adapter->nfc_rule_lock to mutex
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
> Sent: Friday, April 24, 2020 1:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 18/19] igc: Change adapter->nfc_rule_lock
> to mutex
> 
> This patch changes adapter->nfc_rule_lock type from spin_lock to mutex
> so we avoid unnecessary busy waiting on lock contention.
> 
> A closer look at the execution context of NFC rule API users shows that
> all of them run in process context. The API users are: ethtool ops,
> igc_configure(), called when interface is brought up by user or reset
> workequeue thread, igc_down(), called when interface is brought down,
> and igc_remove(), called when driver is unloaded.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
> Note that checkpatch.pl reports an issue with this patch. The issue is a false
> positive. There is a comment right above that line referring to the lock.
> 
> Here is the report:
> 
> CHECK: struct mutex definition without comment
> #31: FILE: drivers/net/ethernet/intel/igc/igc.h:193:
> +       struct mutex nfc_rule_lock;
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  2 +-
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 24 ++++++++++----------
>  drivers/net/ethernet/intel/igc/igc_main.c    | 14 ++++++------
>  3 files changed, 20 insertions(+), 20 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
