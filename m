Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB65C222A66
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:49:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60C2A8A976;
	Thu, 16 Jul 2020 17:49:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NaRRhXlZtWc1; Thu, 16 Jul 2020 17:49:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D89ED8A513;
	Thu, 16 Jul 2020 17:49:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6BEF11BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5FDCF204A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c0IEq9yJm1Up for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:49:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 4069722882
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:49:49 +0000 (UTC)
IronPort-SDR: etE0X0bQ4cUfqMXqq5OBf2NVDjVsuNpuftjzxW4eI7dRxppI/5ZEQ4urtB9TSUZlJRl79fC2rb
 b+wr8k4AYoKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="234311275"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="234311275"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:49:48 -0700
IronPort-SDR: NByI2F4c4PaQi+Ftz26DrZeuTn7Bjc/7SuPKxgkCUflB47hIEkv0hEP+dNuW6FyAaTvsvtqs0f
 A9tHE4HXvf1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="430575630"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga004.jf.intel.com with ESMTP; 16 Jul 2020 10:49:48 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:49:48 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx118.amr.corp.intel.com (10.18.116.18) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:49:47 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 16 Jul 2020 10:49:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ga/5Ce9ZjhoRYriTOPaB1sY3yFflfFmVvjtryUPT0x2BXKNRUO3jqBNzUfBPZrdOcglblCmFUXTI0oQwFUokInV7LpGvsz6249FXXChSlQf3vsdSRr3eaD5WADOBubQsqRTB/qxpDwjPR1WwyikN6FW+9dVTbFlNOUnrODzl3gi86+5KApY12Uqn+6yrpEhLIX2dJqB1YwxctSflX+rbNsCioKm3fA74QHzi1N5IJNmY0eEuf1HN6E+idQPpoMLTrUaAdBP3LqgBPIiL3AjViM2W9Hm0qDG7C2Ycxd9kkeFzb5Y9fNOcKwZFLafxLqfTDWt5O1JyXgHjFEXI09IEGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pNuFfS7UMMEYVD8NuzGITZ38NTaBgncQ9JRCXdqtblM=;
 b=A8Ou896j0AN6CvzPXn+NbOnOgy8K48++Vgv1EI9z3slP8YE2GkB8P3xVHoiZb1QOVVF9RCG7GDgilEMi/aYRGxXB9XF+mnfox3essLVgn03hGnxY05I15uLOZkUhZLUH3Puz5ap84VJjTKYX0XJ9WCCU8O9nt9ytYk12o10Xdoa1ORPRHk8ZGYrPJK7hXFTS1t0QyM1AC7uoaPo/WAXWCEJDzmDwb6TMOFKq1KWZWc3bWuMxWxfROT/pbzppgDHJwqDQ+HGyCYbXjZxKWYxFToyqFitFfPOcRXCUFjQ27xPwXTsW7HqVe8190ZpDUk7u8BC7CQKDMUwkAlgaV+ZEyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pNuFfS7UMMEYVD8NuzGITZ38NTaBgncQ9JRCXdqtblM=;
 b=eR+9nQx7xTonUU+hIRzZNKJqbTR5n69i0sVphH0EVGozyYzgHRD0kHY7tqhbJFGl7ucdTG5OS9sVMh0J60GcAhArbIoS3p6GeTbvu4rY10krtmXs3kuWRSyhg7yumPGlZWwbcid3+8GBFEBu3vQ+TI6g6sj5Kr2s2/wOD2z4j6A=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1332.namprd11.prod.outlook.com
 (2603:10b6:404:48::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.22; Thu, 16 Jul
 2020 17:49:46 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:49:46 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 06/15] ice: fix overwriting TX/RX
 descriptor values when rebuilding VSI
Thread-Index: AQHWWVg/GsEFfeEMOkm6qUoJZbKdUakKgDrw
Date: Thu, 16 Jul 2020 17:49:46 +0000
Message-ID: <BN6PR1101MB21456A6B89E7E6191124FBDE8C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-6-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-6-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3b1316d-0c65-4d1e-be88-08d829b0a108
x-ms-traffictypediagnostic: BN6PR11MB1332:
x-microsoft-antispam-prvs: <BN6PR11MB13320C319A6D553F9B4E3A7D8C7F0@BN6PR11MB1332.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6sKJfoaJABkMFxgQ3U0RlYkIZhGv0oGN2S+7f8U0ntE1cr10VTi8ATvLGfrmt3V/1sn4xxO3YXmq/jAyB03k6TsqFPnNSMPt3YUG6xFMROUnOiM4Kv796giA+fjpMWqjV7FmsnSaNbWvSSPSuBfS1lAmYaH1gvhVvybDNux9FtbP6AqvpBzreNolXUMEVPA94k3RrTaUDqKeCJp4Gi0r5zZr4CT0bZedEe/jjK601YpA2CyH369rjgk64z5Zt3YsseTQVjZZQ2FSOe92mkhXb7qRXsvEAE0LmqQmIyyGUOct6eacJpWhLdNtlznSHcEY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(346002)(376002)(396003)(366004)(8676002)(8936002)(66476007)(33656002)(9686003)(5660300002)(26005)(52536014)(66446008)(66556008)(316002)(53546011)(4744005)(55016002)(6506007)(83380400001)(64756008)(186003)(71200400001)(86362001)(6916009)(2906002)(478600001)(66946007)(76116006)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Q30FebpAleLoXqsZ9yQaoBlzUVMpL+oWpmeuK/4Zu4o+BfMkFhy640Et0TuFa1cRY3i1RiRbFDlDHEP2ZrI+6+u7zYDwPBLdGyR+2qSoDYdrcS0Lok+p0H0PoONYGdc8Q5qUBxo/wCSiAixt77LIardsDAmGJEpAwSV7lVFRIFhdy6of9nHPVvBvjs3ggS6TeTUIxF/ZnfCvahxHmfpyJqSUM1q7etR84NboA7/SvNmycEbNHDMIyhcrIuv98WiEsPhy4VD2McSXUdikg+Mn6YJD3wauIZ1kK6m9h15yuRAo0N6zBQ2OncsvXjOe81bp9hy/3LbsV1FpZoy/Hv6nF/gyrt6tKen0UslKO3Dy1lJQ8vwykxb0w7orEW1SYJbnwXpcWa4nhJVtRQo7kWIuQKpxWhxYD/6BdIaNwdpzg2Oy4H8DEfG9RYLkZXdD07Omt0eq75Kdn+smqpz3RT0Ao1xIw96a/cOenJ8MTrYiOyXcOtFT+7VgpLDL4sQLhkql
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3b1316d-0c65-4d1e-be88-08d829b0a108
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:49:46.5193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MPnTzMTw4wrSzJZtIa7+tDW+hbZfixNbVWN+zkr92THgDrxpvFLnN67Tq7823yQBcm/GA7dyKTif4H5dAGa6Vwa81MrSqXaq/87zMe5keGg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1332
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 06/15] ice: fix overwriting TX/RX
 descriptor values when rebuilding VSI
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Monday, July 13, 2020 1:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S50 06/15] ice: fix overwriting TX/RX
> descriptor values when rebuilding VSI
> 
> From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> If a user sets the value of the TX or RX descriptors to some non-default value
> using 'ethtool -G' then we need to not overwrite the values when we rebuild
> the VSI. The VSI rebuild could happen as a result of a user setting the number
> of queues via the 'ethtool -L' command. Fix this by checking to see if the
> value we have stored is non-zero and if it is then don't change the value.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
