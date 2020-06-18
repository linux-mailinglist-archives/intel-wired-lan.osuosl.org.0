Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B3B1FFA03
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2020 19:18:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E48988AEE;
	Thu, 18 Jun 2020 17:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XUIq9rrtiE1E; Thu, 18 Jun 2020 17:18:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5848588AD6;
	Thu, 18 Jun 2020 17:18:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97A3B1BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:18:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9371089511
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:18:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u7ESHG74VoYY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2020 17:18:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0B583894C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:18:28 +0000 (UTC)
IronPort-SDR: pew5qeA412mXuNcyzsnGUpevAvpDPsX+f3ZQxQgptHwISmmW+DmC+oxvwY9MfknKjgcuvPUcXD
 pv0kVq+Ttkbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="140180320"
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="140180320"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 10:18:27 -0700
IronPort-SDR: BT6Oxgkmtr1P2dzkBjW06T2Ce5ErAtXrAyo+fGADXid1UBT0PiGWjKgTzZbPs/cgDM0ed6GChh
 kKL2rjwx2cAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="383584260"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2020 10:18:27 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jun 2020 10:18:27 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jun 2020 10:18:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 18 Jun 2020 10:18:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JSUKfZqZfD1rExaD2PBv2dp0p6NOCKyZv76Ky0Df1mGwh6jSaAXNWdG9mMlMEq//xxheiZ3TbCgco8dJKp6grdcpkRPMFHJBa/6HjPqeVhp9eJVDD4PXs7tka4H1Vc0EzB0ujce8V+X4u70bz0mJ+aF/+GfbfDZ8yTy0TOsPzmcGMFaPXVaqkRmTvG51XHTyQVt0atjmbUUwd0UcIwsjQa7GtepJtqQTz0JfaPOIZ9vrroq1Zcc2ef0Ug5QLZRCaP70tpRPZGX/0G8oUw5XEA4+kexb0IWAICO6obBGH0nsSukZ67JU4sbSrEs/TxlCGjqjkXDOzMcOUPpWsLlRI6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y2x8oI64duojZ1yf+jOzHllhUIsvN5Ijs8KF9xoXEoQ=;
 b=GQ5Up+I/3TseROsTUOUaROtDsio9G3MKBCqqDMYoAYjot+sSR8KDTIaDuKe97cpMeN/NiKc8V3MjtprVXlzcA/E08uw3Ur/sZJWBdWwuQ83XXbMMg7655N0D4X9ov3r6iX4Odt4U8klnS8WyjPkf34wiZ+1CSrtOKartxMYxscnMR3jUQ3zK47NpopTbqglA6CMuHIFbpUjfjHSP0gYJ7Az51LS3Ye7ETQihVwpVe/W63J9Hh9CxGdsdTr6hi5xDtAq4aF4sVl2NnZ1Tm0QxVvRi69B2B5jI4doFaydfW9xngG4YwwF/P9I4tp65tLeRfVVoW9B1qasm5MzzhAnLYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y2x8oI64duojZ1yf+jOzHllhUIsvN5Ijs8KF9xoXEoQ=;
 b=HwDpcsm9P54kWyuDCDogSxi+I4og4HH+SrX83KsFClamTWrHfxHOEYACdJNnkNeSrn2OEZTsNMYbaR/I3ZGA0j9snbzK5PCzTwKlPwe5zwonSfvq76gwZmhBD8TcrZ0v4I3L4ttRxfKsvcH6syJIxdluRbYjnOszA3F1EaZ4KE0=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1259.namprd11.prod.outlook.com (2603:10b6:3:15::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22; Thu, 18 Jun 2020 17:18:24 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3088.029; Thu, 18 Jun 2020
 17:18:24 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/6] igc: Remove duplicate code in tx
 timestamp handling
Thread-Index: AQHWOgNngNuk85o/V0O3nLK6vElW3ajetNVw
Date: Thu, 18 Jun 2020 17:18:24 +0000
Message-ID: <DM6PR11MB28908B8A22A90ADDE832CDC6BC9B0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200604000105.15059-1-andre.guedes@intel.com>
 <20200604000105.15059-3-andre.guedes@intel.com>
In-Reply-To: <20200604000105.15059-3-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d70384d-c1f6-40ba-f297-08d813ab9b77
x-ms-traffictypediagnostic: DM5PR11MB1259:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB12591F4D78F3B3E5B996734EBC9B0@DM5PR11MB1259.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ccdqSn5FUjsSGHXkcIqUSgTDwY/DPxw2KGggcJOqEjLIK2JBm2mLFtLn5RyQOXA+vkamLEXM5ul5qfxCurgyytq/mZd65rJuN7w5MCNJkMSyEjTZcNKU5lARuVFLh43O692GZd4LI15WZsogXrc2DH4Uk4Z20+L5ixpDD/m+9Jw7oI0x4mj6gaXaLTxmniaTsez3eIxGT6/KgsnXlgul7icGsNkGgD6t0UFLZPnkw56gkyJ+wbnxhNG8519gAcG680fo3hwbbUCWLqdUlU7Jagg4bFY8YheWNtiX7TUGxHdIdi+FI3xBmg2Ogu/PXAFJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(346002)(366004)(136003)(376002)(8936002)(478600001)(55016002)(2906002)(86362001)(4744005)(9686003)(8676002)(33656002)(64756008)(76116006)(66946007)(66476007)(66556008)(66446008)(71200400001)(26005)(7696005)(53546011)(6506007)(5660300002)(186003)(83380400001)(110136005)(316002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: g28FvqIAW7hRAizzGJstYl8tFlgPUHj42P3wk+r4qdHycnOzGWAipRDGLVn/U3EWtTiyVQybPBHMWW7OJMadMb9HgJwHg9Ky+AgnzF2WXJ6TAMe0r6lkmkxalw82erG/R1eiB0bfYzqKwmX9GhnAIx1R238Y5jWDq+0rQRz/OX7FE7XpxVfVqxPVjq2iuZ7LFBMbgNU6Y6nl3XVgtDM9m0dmH0I9bkkTdLoca7qO9zOBpxjrrnIOygRyjbl4ZWKNBE+gQPCaYphD75GoGv4NNrYop1C2gKrvs3Fcr1a7v5RarRS1hq1B2WnAxUjSbLIKheAP3+dQ+w+W1/iGcaVOkPnk5hu8aWpk7AD9eINsAisABJyq9uS7lpPkO4ka5CsFYjCl6dW2q14UNGNh8Hb9tWK3HwVC7Hf9cfmFf7/jtEy3s8jvvQw54uu4wiDxwi5YC3wVAStl0mJksUQ5+Xpp55xYQlDYA7d7ztMRrHw5cux4AcYYr1VG3vdlKTBqdQmv
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d70384d-c1f6-40ba-f297-08d813ab9b77
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 17:18:24.0560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bg4OMAR8vYgXvVyQskHkkDM5CGQaxb5zgrouhuJLMDAnBq9LWhg2qJV4nmQkjRTWw7rRKFUPNPaRrHGPjU7hjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1259
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/6] igc: Remove duplicate code in tx
 timestamp handling
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
> Sent: Wednesday, June 3, 2020 5:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 2/6] igc: Remove duplicate code in tx
> timestamp handling
> 
> The functions igc_ptp_tx_hang() and igc_ptp_tx_work() have duplicate
> code which handles tx timestamp timeouts. This patch does a trivial
> refactoring by moving that code to its own function and reusing it.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 34 +++++++++++-------------
>  1 file changed, 15 insertions(+), 19 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
