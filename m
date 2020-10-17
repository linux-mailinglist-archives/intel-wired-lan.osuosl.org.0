Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA37290EA4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Oct 2020 05:44:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 773472044C;
	Sat, 17 Oct 2020 03:44:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iVCMlqdUiLB6; Sat, 17 Oct 2020 03:44:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 67FFF2046C;
	Sat, 17 Oct 2020 03:43:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48E101BF41D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Oct 2020 03:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 42D5088628
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Oct 2020 03:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Lp531VgjPak for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Oct 2020 03:43:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 37A0B88627
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Oct 2020 03:43:55 +0000 (UTC)
IronPort-SDR: wbb8koC/OZVjn1/5mi5qtPbKfZi6qR81zaRK3b52X5/NF3PWVRBuTmKnw4udx8R6I8WZVH4J9Z
 lLjh3dSHlaLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9776"; a="166807729"
X-IronPort-AV: E=Sophos;i="5.77,385,1596524400"; d="scan'208";a="166807729"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2020 20:43:51 -0700
IronPort-SDR: pg6ciuHkmZ3NaivF+t/JR90wFFyQvlQpwM9xtmWHt/0G+otF+PUJ6yIgEA6Wk20r2TLw20JgFB
 JMd2AbebN4tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,385,1596524400"; d="scan'208";a="352378481"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 16 Oct 2020 20:43:51 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 16 Oct 2020 20:43:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 16 Oct 2020 20:43:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 16 Oct 2020 20:43:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xys1OFZ44CA2NXdh1wiugxzkqc+rkSchev07DKwq3iFbxo5vSfuwE7/AwFnDtUhyDZf1gizmTqn1yGf7IU3gyb/jAKiWyR6VVtKYk2NOHOuzGzkDExEc4+oxWDCaXxjJaeVXk3hcGltGoX7Dv4GbFsZ2wX/t1oTFJH5wjg7BINJ2X89sJQ85CtVLhjiQ8b0ZY9Gg2jOvfwO2B4Nis8zKvf7VE1LnMbY39Jc8+pZNpI6NJ+nqlCqxlmHXeiIM4/xEOs+J16p5F+OX2hE8/IF1jUH52tnHJdjhO/CJCL0CQaJJ7AZ060FEcvXqQJBWuxUscrqdR6oq2zPCzHoSpolavw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vr+RZ+Hy4PRFJqe3IAQYX+L42fNXuHX6BHkXM+REDeM=;
 b=W+4pUhs6cLaMLBHQxWzl5d5cUjMlrf4uuzOZKlpLBZhZhMDyKAjduw/97GhEe6bz2MAGXPrrdGPDDl5fwaU7RQ6IUTD74ARI+oNjTxIidrmgcAeHKvaEtBUauvlQI8yF/MibeRdvtd9u6nZwiTgZ7HS0KYi3bySXMr3EeFoZHMZ827Yn8cHfdJETRRg8tsaTKFAFqwcrgWw4LiEalY7c6V+MuMHxUa6Cd8MLFXoaZDbbevFTFlH5rK03NX/EOo/xxq+U81s5F6d3k0avTB/0uQ1XUexyhjahCXT2Y8yFK5azehmDW3Ikd0iYtRNUdiEqDjtx9gkByZgFmrxoEiNe5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vr+RZ+Hy4PRFJqe3IAQYX+L42fNXuHX6BHkXM+REDeM=;
 b=tTjhkzPJYdPuTm6ccQteEZqL+fAYpNrdNkSe1w81MNOHAq1a2P3csbo3Zeh9Ip8GeACpsRN/l/ybUgp/J3HjNHoeOLlqtGKqRIDPqDuV+Ekn2PMQWdDJKHT0DP19s9QAef1Sd3uT8C3BNwoTul4pfoPZngV22/uuj0hSloxll6g=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1468.namprd11.prod.outlook.com (2603:10b6:4:4::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.24; Sat, 17 Oct 2020 03:43:48 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::2472:44fe:8b1d:4c6c%5]) with mapi id 15.20.3477.025; Sat, 17 Oct 2020
 03:43:48 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] igc: Fix returning wrong
 statistics
Thread-Index: AQHWk2q5E++dW/8xtEKzMX2ubsUIJKmbSHgQ
Date: Sat, 17 Oct 2020 03:43:47 +0000
Message-ID: <DM6PR11MB28904BEA422EF7B19FEAEED7BC000@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200925183537.2635645-1-vinicius.gomes@intel.com>
In-Reply-To: <20200925183537.2635645-1-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.150.146]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75a04191-2d4e-4d82-98c7-08d8724edb2d
x-ms-traffictypediagnostic: DM5PR11MB1468:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB14683D4149BCC6AE57174CEABC000@DM5PR11MB1468.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:923;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l88RY13nikCBE38nfqgZFRsErjkqo68VTwaZF+rqxSw2rWwOqaV6FNj6I+NCuEUHPvS76S/UzSIdVh/7oltOMPtn9ZOjoGU8Uc52Rhzm9i/EPMcG+W40+Wtv+RCdTcFS28cS/IlRg0jscNZrbYdHTkERJINIAE8vt+6qY9PJWUXQhH+y/8KXGWAXS4MJyzom8RS01HEfHYCx2Xn36PtvjB/FcwqmEgyhSU8fYAHPLj9YmgM5SSK5kIAKsf3DnUXFI4cPW5v61N/csLBs/TRCObGrOXrzbtkSlJU64lWgXtm/GUNDICP1l2r0FIsKlyU1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(376002)(346002)(136003)(39860400002)(66446008)(64756008)(2906002)(53546011)(4744005)(26005)(83380400001)(66476007)(66556008)(107886003)(8936002)(316002)(71200400001)(55016002)(66946007)(4326008)(186003)(110136005)(52536014)(6506007)(33656002)(76116006)(478600001)(86362001)(8676002)(7696005)(9686003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 6oTPUtGa0o8OZcMQK/yOXrVjjxxiEcT6YQs4vwIBPI3R7OxqYxQDpW6is0qBkMb0QdHlwCAaa2kI8CFVj6sr9ILZi9cPPf/kZMRSxPQ0RutaHu5Y2JAdp4P1kSlWwQBc2MJvLdBorhFoGBlD6EQDfx5VA2GBBQjV9N2zSZdWvKZCHExvvzImgGuY+AGXmn7QqGBrd9LCyhgLGeEN897nvW4j6S+zj6L3eqSSOHR3U8BJnxkXIpOw+rJTKXRaKKSzKK48kKTCSKn63pejpEWqR2eyfrIbNFcDY6ppEJ6UAp/rLb0Tn7cWuC2q9P0uM89So4N1x9TbyqHmwVBxc7s+xXfUaKzDaQqVmNQXyqT/MhZIDNikx9I5+ZGabaT+kD5spsH+ScOhPAdE+D86dFU+52ijhTm3YPqyKZ9FUye9uovD3qHlSqvWaft+Xl88fbNmkXXG6vvBjy2lMxMUqc4VhxSEEXc9HU0rDShqjOysG4WERuG8IfQeUnIQFsEWJBHQ68aojJqZr2UbjYK3nlgg1Tz3VGYLsrQjVJ5dWEHJxBDMxYfge6Vpg2N9odS1B8jaOhjMupiZPPthVHDappUnWmgv8VB6WmUxOtNG2vXGC+BhOJKEUNCaWvIWhGaa2c6y/8cVwYolyeywS/2KFnceRQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75a04191-2d4e-4d82-98c7-08d8724edb2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2020 03:43:48.1550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OobK5QjW/7GC7QyLlgJ+kcGfU3b0fHkQATNEOnMSyjzflxASJEfkk9ESpELQxdcHFXjAU1jPBjizQnVIpfiShQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1468
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] igc: Fix returning wrong
 statistics
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
Cc: "Guedes, Andre" <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vinicius Costa Gomes
> Sent: Friday, September 25, 2020 11:36 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guedes, Andre <andre.guedes@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] igc: Fix returning wrong statistics
> 
> 'igc_update_stats()' was not updating 'netdev->stats', so the returned
> statistics, for example, requested by:
> 
> $ ip -s link show dev enp3s0
> 
> were not being updated and were always zero.
> 
> Fix by returning a set of statistics that are actually being
> updated (adapter->stats64).
> 
> Fixes: c9a11c23ceb6 ("igc: Add netdev")
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
