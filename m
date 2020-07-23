Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7397322A48A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:26:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 316C888455;
	Thu, 23 Jul 2020 01:26:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fHIefGBWiGWg; Thu, 23 Jul 2020 01:26:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C546A88462;
	Thu, 23 Jul 2020 01:26:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 160211BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:26:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 119FB88AF2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:26:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FkE-1KQyPuVy for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:26:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9942388AEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:26:21 +0000 (UTC)
IronPort-SDR: 2rYzTB54QQx3zTGLIQkLpqDJM+7BbPbEjpH1hAhsN1dr+m/EAPm0VTyg04xk86itACVKy1ibTU
 BkULl2tftb3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="211992642"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="211992642"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:26:20 -0700
IronPort-SDR: DPbHQ0qzfGQkoW4nKVHUJbg1O9SjzMiV0fjRH9a2mPRWbPNR30bPYOwwpiCzuUjG/726tWMS03
 Tj7F4ElTXsJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="392850681"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jul 2020 18:26:20 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:26:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:26:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GafKlm5weCbMCzO0foifZvheU0o9OcRiFjWH5UCFzBbb1sjQU9Cr9qwDyBbzOFpfmysG1xbY3jquhGkD32zFYE+St/Gjd6OxXxP3VkogCDTpcRJARXUtYJjK96eMRDJa86dDwYXel2Av0IR+L97JL29WZEw1ZxT0Nf2aPCiSBbdV8vLvV1Kq5shJvBr81RW3Z3Qh/yN5Dw2evTmR/r/BZKJTBEU6DQkAnmgDWntZiwPAsVIuSdd/uTMLMJe/hRxmThtXQrVV3cbasoTgBs4cUL0UDmhl7nQBec16O6ZYJlP3bXS9Mp0Bs9l5SgwvaK7SAbT+yfEHptKq/zsjL9mehQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1j/Wo/A46UYss7HZGU4XzpCD0sGFDXPQFPQ0WkW8iAM=;
 b=D5ws+d3qQ5g7qqLB/5Jan9UeuKnhI9rjmvxmXEBlTe0CRaRlMP/kqh+YEq2dHtB+KRRAs7xyM/t1g5MbO8n73zPLFXDcx+pSFfYzpjpAnP1Ty1aWptlX6gq4VxYNd1sXv874o37inTZb4IH3uSzlm4Fozpi0h8EGErgTrvHL2dLtYm3JLYDxQPBGyNyItK7NCFVZ9HZ1sR5VKBsIwqES/Edi4eTww8SnORoui1dI9sk7ufMc4ozb1MRETxC4n2cK7i/VRmFTxwmDUzKEVvFzP0fkeotyIhtl4t+ZnI8lMvayoP6ImcWWOaN5ZytGjY45uR/aPkCAUO5U0UZxLCMemA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1j/Wo/A46UYss7HZGU4XzpCD0sGFDXPQFPQ0WkW8iAM=;
 b=HMlr6VK13rbhfGqXvWSZj/O69qe2AbH7gXqk56RgFDWTPlWryBCU2nA8E9nP91kMihP/jK7VaPJyzbD1dTIzB+wDWUo3IDMHf8/iI61rJQgfN8wZQbPAYkEYPpfkR117FMiMOPJWQltMLQSUTlZCd8OTDddaim2O5QB+ydPskTo=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1537.namprd11.prod.outlook.com
 (2603:10b6:405:c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Thu, 23 Jul
 2020 01:26:18 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:26:18 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 03/15] ice: split ice_discover_caps
 into two functions
Thread-Index: AQHWVgzz4vAl6G5N5Eae+ZYILrW5DakUdF2Q
Date: Thu, 23 Jul 2020 01:26:18 +0000
Message-ID: <BN6PR1101MB2145494F024E8FE3BD4314E58C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-3-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-3-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 09d30efb-c0b6-4cbe-d252-08d82ea76690
x-ms-traffictypediagnostic: BN6PR11MB1537:
x-microsoft-antispam-prvs: <BN6PR11MB15378EE445C716DF2479C8E88C760@BN6PR11MB1537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RAfaB27iTjjpbNM8Tswlod/VkF9xB2rqcw7Cj3cemakrMIFfU+xxp2jTyX5RPzbsJ+QaiFvylhOawHYRs3uLj810rvZRnd8h3g3X/HuolSqquMAZ7WeRAbav6mQMqXAiPdewjdo4PzmhCHuBEJg0JYYxHFGMMTPoG7hdIzeJuDIEtQUKWLgzcqrPSKX2a7v9ukh1JzWVQvkKjJ7MUm9CIfbWqmNOHLFfPMVumg4Y5RIcvX+EIXwLldpXPO5R1jUugCp/jyBC55xjbh2Zn64pCCo+rvTOI0dJxejZH7hUSxHjIVDHTiqRR3GI5W+UDxLWahPbvAnSm8sIq7noTR6HOA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(66476007)(66946007)(478600001)(7696005)(64756008)(53546011)(76116006)(6506007)(55016002)(66446008)(6916009)(186003)(83380400001)(66556008)(71200400001)(9686003)(2906002)(26005)(52536014)(5660300002)(8676002)(8936002)(33656002)(86362001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Khcwoz9X1kRK78o8w2WykPMxNSs4aMSRp7O1QI4bSc0LVn3nH3fOvzYkCbm7hQAIY6QzsrcAIXcLU+1a+P+ODzV/bbz/0gChWTRYjZwXVLkUJKvccNzLXCWmXrpqfvdErVpa9cOlTnSE7eN3SOJVsV1eTT5HFOo5gGKeKJX+BQ20zaNdmLREOo+jVTX+iQwJ7eSb3HoBQPOq1kf8fQYAOp2HQKicGj6vglBThtldqsayZ5vGi2rdxzhjg+0R9VEH5KrmtuTwyJYYBvFMx99MXPDgM1w0o0YDygeklGb2w4AdltQDKldXogTZTTkUtaaeOYpgdZVKshfcPOooKYZa0vWHk4ECnbwzIzPvZuFo0UoinJsxkC3X+MmI9sNdeoUz2KEuvzP/UDK8YCg8uDXDwIVuBjQjq0w4rZvjY0bOI4ULrVJ2OuJomv746wUufPBssLWre1IUr89zFZblsJtA1U3CUPOPP1syxSkMT30bZCrt1iSojhZY8u3uU3U4Jh6A
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09d30efb-c0b6-4cbe-d252-08d82ea76690
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:26:18.6459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fDlwONIXijDGEp94TSV/58PO2geomaFgwijXYhIgPhuGoHelOtqjlXVLTpVllGZnvta8XbAhPG4aeTagLyswm5uMIkTw+QOHFJcoqCuSquw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 03/15] ice: split
 ice_discover_caps into two functions
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
> Sent: Thursday, July 9, 2020 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S49 03/15] ice: split ice_discover_caps into
> two functions
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Using the new ice_aq_list_caps and ice_parse_(dev|func)_caps functions,
> replace ice_discover_caps with two functions that each take a pointer to the
> dev_caps and func_caps structures respectively.
> 
> This makes the side effect of updating the hw->dev_caps and
> hw->func_caps obvious from reading the implementation of the function.
> Additionally, it opens the way for enabling reading of device capabilities
> outside of the initialization flow. By passing in a pointer, another caller will be
> able to read the capabilities without modifying the hw capabilities structures.
> 
> As there are no other callers, it is safe to now remove ice_aq_discover_caps
> and ice_parse_caps.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 94 +++++++++------------
>  1 file changed, 39 insertions(+), 55 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
