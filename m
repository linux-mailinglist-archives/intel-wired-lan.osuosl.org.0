Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 529E32FC6C8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 02:29:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 03B6D204F1;
	Wed, 20 Jan 2021 01:29:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VERgNZ0huk1d; Wed, 20 Jan 2021 01:29:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1A396204F7;
	Wed, 20 Jan 2021 01:29:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE76D1BF297
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 01:29:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D74C8204F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 01:29:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cd4jajeiMpKw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jan 2021 01:29:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id E4C7F20031
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 01:29:42 +0000 (UTC)
IronPort-SDR: /u+v2sMdxCMF838FPIchrn6ITxpajvxtCiaiy2tplZH5wXp+ZEuh1iwO1qjv9wYzwNTcIz7VG+
 X4/uEX4+PYGg==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="243097088"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="243097088"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 17:29:42 -0800
IronPort-SDR: xOhvdXVGiLHLhUtIH2Mo0ouuPv4sDjHiLhucjdBZm2d9J3rhS0gPobQMkl96nh3oQ0iuBAs2Vp
 nvqjBOiQPOnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="571189575"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 19 Jan 2021 17:29:42 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 Jan 2021 17:29:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 19 Jan 2021 17:29:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 19 Jan 2021 17:29:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R451qJ0RQ/HNxZt/lSz6ii3/8bQj4noN5MWy9gJUqhHRYqpPUIw4nw+JOhnH7RjVQ/qPsP8zmlGB/0fLH7bFTQgMoUSL1XOIMDILrhNy+rQpIJJ6w7Y11wy1L3oHDiHEkhM+MQRJE2h/MsBGZNP6a24AW78cfukKm9mmqMVxutg9qspE46hlG9KGgG5/fKoq3Aoz0b/X8pXxrp7X7nV1gEAi1YtTJn6ps+kwO7m17qj0ZCPyuzI+DHFPKF32/fQ9xojYtXqNGudRbs1sETYqcOrpp8L+AAeDRINd8xDw+V2W/d0t48WjdH4BzKg35ZkawfTwr+wskQGFnNBHmT31kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wB/57e73sZzeAcKqyt0IDrY2dlWDoZ+zeNQtQi7uvQo=;
 b=SeWtoiUX2xKe4mWGDZoS3pe+eBHY9FWW+gatApfIeg9wejQkawcrAXqrDEy+qyijIyOehIXDUYwRfNPXUUMp3RJXPbLGhR5/0eikNa2ka6Gz4eHwD/8tEc+kI9WO460gwWE7AsGwAnB7p3rM+eMfGkLc1i2LoXlkb0OY9qWfP+i0nnbuGnTjnJD90XxCldMkLqHXeLwcNgoMP51S9sMDpmu3dFCyn6j3RnX5eXV2AMcu0ZHSpn59jKP4GYgnKpcwZt/tHrfpYguIEarn3yhVGYHRVTy4vkHENBz1jNGM7/Y5OyisjqjCp2Or4IfPyoWt6DbA+2BtYC8cX+1OEmhUXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wB/57e73sZzeAcKqyt0IDrY2dlWDoZ+zeNQtQi7uvQo=;
 b=Yk4X5pk6uDeVZzjoTgOZa+jCD+CakoPZkwQhSMXhGfyiric4iKLx90uR6L8qLDmkNeP5hEdQoa8sJPB6/nb1MVUPZATvZkbc0voLG7NWgrbhMW/CiTYdJ19/LshEIKD5MePasYL+zeXMVi9m3TmpeVKt3o5PlBZy/5OFMNJIaWw=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2751.namprd11.prod.outlook.com (2603:10b6:805:63::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Wed, 20 Jan
 2021 01:29:40 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6%6]) with mapi id 15.20.3784.011; Wed, 20 Jan 2021
 01:29:40 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v4 1/2] i40e: Revert "i40e: don't
 report link up for a VF who hasn't enabled queues"
Thread-Index: AQHW7dIHwNgKHHYuWkCwQofYIQZ2Xqovu8yA
Date: Wed, 20 Jan 2021 01:29:40 +0000
Message-ID: <a1480517830b533099bf5ce90e09a9fd5c00504e.camel@intel.com>
References: <20210118193454.275037-1-arkadiusz.kubalewski@intel.com>
 <20210118193454.275037-2-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20210118193454.275037-2-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15e8a2b6-41bd-461f-10a5-08d8bce2db6c
x-ms-traffictypediagnostic: SN6PR11MB2751:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB275104D0D02FE7B7E8FF2ED1C6A29@SN6PR11MB2751.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lK9NY79xHeCyIVFmsNn6cAvcGpY5Q0Ykvn85DqrY8ymGGl9zyD9HDGWw9/VNVT6Z+jsnELJdaRWYkllWxum0r8p4drj7uq+5cTBXitgPDHvVJy4N4hB6ZBEj9xerRJvPxjooxabjsVnLXrV2o/Zu2Us9gyqBXM5wDuQhgyLMjl6ta4p8xvns/ZjmsgCE5mrOeHsLaFU+TX9jK+n0MHzUJiQ87rWPo0BW44+drxtcIrkgEFVEipvLAZTYQ8QLv9mh0yKFp0WDkL0D9FNgoWeIpVvh/6nnR+MAswDdefHXcegdfubwKg2vDhVniJ48FFUNIzjm9JmosX45oBJGZeog1C357VbZPOZf7KkVHqhfz6zPFZdqsjzp7loX56c4tzv9gEXBQZw2Ewn6EXDvMTwG+GSuitECeyKHL6lJWpDc/kE+jC8+8pD+JseqR3SOc5ns
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(8676002)(66446008)(66556008)(64756008)(107886003)(86362001)(66946007)(91956017)(36756003)(4326008)(6512007)(6486002)(186003)(66476007)(76116006)(316002)(2906002)(2616005)(6506007)(4744005)(26005)(71200400001)(5660300002)(8936002)(478600001)(110136005)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?SC8vRXExNHRCc3I2NGo1dFByN0t1ekdJbW5XbmNYUFoyT05BVHRIVkdrWS83?=
 =?utf-8?B?ZVFQbTczL01hcEIxNFVwNE04azZzK253WVZmRjFxUFZ2dnkxcVdZNEg5bDhz?=
 =?utf-8?B?SER2R09xY3dXVHM2UFlNRVlrTzk5dUNkOWRnZjV2RFk3VHhDakdoMXNMTi8z?=
 =?utf-8?B?L0EzMDhodXVBNVVjUjVJeXJlb0xMdk9KUitxUzhKbWNiRWZTQkhjYzhrSnVU?=
 =?utf-8?B?UnFMQnl3d1pGcEI4alVHQWVvREtWb21WODhLaXROaWt0UDBGMm0yQm92aytK?=
 =?utf-8?B?VnJJYjNFU3dxS3c1NWxJYjZ0RmV0SmRWV0t3TTJwQXZmc0JuTXVsRk9TYTFm?=
 =?utf-8?B?SzBrMXV1QU1wRHBNTXpUcHpaY2MvRXJGOC9TK2ZlUS9ENUQ4Q0x0TFNPdExm?=
 =?utf-8?B?eEhxT285QjJUOU1zOXpIaEc2U1lZdStvUFV6eGltRmxZTUZscUV4MUpGL2o2?=
 =?utf-8?B?Z2pHeXV3c0pkSnVndXU2L0hsQkxGenZPTHQ0ZjFmMVZEWGozeVFKYWRmeW5p?=
 =?utf-8?B?Vnd1UXRGa2pDd1lvdUNRb0kyTDRKZTQyeGwxSW8zUjVXaUh3QjYyb2lvTFhh?=
 =?utf-8?B?c2YwM0xCTUxiUU1MeitIS0N4LzBFbUhVSWJ1Ni9rQ25ieXBFYllWaVU4d0Ns?=
 =?utf-8?B?SEY0cmN6M0FybU9JTTRvUEt0N09Td2pRTzJDQ0F3U1pHMVhPMmZwK0pkRk02?=
 =?utf-8?B?T1BWNWFXZUFsVjNlMkdQUDNzbGN4ZXh4eEIzcjFTQUk0cWh3NGdtaGRkeFYz?=
 =?utf-8?B?K0M0bitNd2dmdDN0NndBVVNRbGVMWjdDR3Y3N2RrMm5kUmhBTkdxTzhUZWZX?=
 =?utf-8?B?QXRuS3dOZW81L1hwUlFybW9ORFFXc0lLaStkK1hwNmVQM3dXWHJtR3VyWVBt?=
 =?utf-8?B?MTJsaFNQZ250YllnaW44MFNhU091MzZleHByYVlMRUJvNVZxdmQ5czdMWGxo?=
 =?utf-8?B?Rng2bnZHSkpaNzdqeFJVNk4zcTU2eWYzRVN3cFJRSVVzNDNteEl0NWdNV3dT?=
 =?utf-8?B?YTVlb25QcmQ4WTM1TE9ib3VGTE5KNnJ0K2ljZmo2S3ZBTkxVelozaSthTTUv?=
 =?utf-8?B?eXJSa0RNamFKaEtUd09TV3hBdEtkTWtIdEtJVzJiUkVwb2FaLyszZ2NqUWZt?=
 =?utf-8?B?SldFTEEyMm5EcjRYVkRocWZob2J3VUtqZWc0eEd6dHo2aXJFTndoQWw4cUJ4?=
 =?utf-8?B?NWNoVWFiMm5EMTdiK3RrM2pSamFTWmJwLzRtaG1lclJoNHZCVlMzMnpxc0No?=
 =?utf-8?B?NlR4Rmhva0xmOG5VdHc2THNyZEVseGM5UEk4Sjd2a3F3K09kT21Jd1EyTi92?=
 =?utf-8?B?RG54dFBmZmh5KzVldkZNb25hOFFOMzRWMjZ5bkVpY1B6Mm1EK3RQc3YwdC9y?=
 =?utf-8?B?Q0Zhb3ppcDBCaWtHSzdhRW9uSzZTdUsrbW9DMTRwZTl5bk5xazZ5UnZodTY5?=
 =?utf-8?B?L0RHL21qT1V0bm5RWDVmN1RmVlBGaTgydml3VExnPT0=?=
Content-ID: <646FF46076C6F1469A87F9EF37C55B43@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15e8a2b6-41bd-461f-10a5-08d8bce2db6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2021 01:29:40.2198 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cbkQpfgFvDUpDHITHJVwl1Q7TGh2aXXzv+Xj8YVAgqd4AcySZVUuM0DXXbDu3VPJoIRXh5uM0WtE9NFFKnM2PZqFenkIjxcGqlDv4WsK/oc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2751
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v4 1/2] i40e: Revert "i40e: don't
 report link up for a VF who hasn't enabled queues"
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-01-18 at 19:34 +0000, Arkadiusz Kubalewski wrote:
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> This reverts commit 2ad1274fa35ace5c6360762ba48d33b63da2396c

Can you provide more info on why we are reverting? Some of the
information from the cover letter would probably be useful here.

> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
