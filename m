Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD9A7138F4
	for <lists+intel-wired-lan@lfdr.de>; Sun, 28 May 2023 12:10:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA23A4028D;
	Sun, 28 May 2023 10:10:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA23A4028D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685268633;
	bh=AyCERuIM1bhuOCqQPj8GEH0IiO41Pl1x9LhtDKoBykU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1GaNt4iRmprzv2Ch0iLa39e2MATvpMG3azXcNxst4PoCNQT0/mvant7Y6+yq2kVHz
	 0sQ3qc5aeNw91ylC381OisYUNmN0qV+s6+6gkFT4MB/XFUdfLy57sUTiGyY1hbHUr7
	 n4rfTVrT8/9JJVqwHb5I4fne2PCIznabO2RDS1SR1ChgzEWlp1VpBwxlBZN6TuJr8M
	 V+iWRsiEnGqEPB9112blkDxRetGRBK6/l1VddGS18xexV8b2KIhFEGqMLwKR2YwfNZ
	 EuLd/2cI4UZulvPB2vwaiIc4V8TWU08Hs/328Uykhcs4g+/pLAXSiUmEaFH6Riy3o3
	 tqOF8MbcvqjmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H99AB7pmwdMx; Sun, 28 May 2023 10:10:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B3E9400D3;
	Sun, 28 May 2023 10:10:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B3E9400D3
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2349C1BF2B0
 for <intel-wired-lan@osuosl.org>; Sun, 28 May 2023 10:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0724401A4
 for <intel-wired-lan@osuosl.org>; Sun, 28 May 2023 10:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0724401A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uS93Uay5J0IU for <intel-wired-lan@osuosl.org>;
 Sun, 28 May 2023 10:10:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB991400D3
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB991400D3
 for <intel-wired-lan@osuosl.org>; Sun, 28 May 2023 10:10:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10723"; a="353344199"
X-IronPort-AV: E=Sophos;i="6.00,198,1681196400"; d="scan'208";a="353344199"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 03:10:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10723"; a="850049633"
X-IronPort-AV: E=Sophos;i="6.00,198,1681196400"; d="scan'208";a="850049633"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 28 May 2023 03:10:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 03:10:22 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 03:10:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 28 May 2023 03:10:22 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 28 May 2023 03:10:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RU6qwdZrZgtWD8y92vRRA/X8EAgF+ogbUk7lumbxouXZ3oKdWnCScmQq83lO5f1AYeoI5a/6x4DX3cXj9l2C9T4hQ5PmDEoJ3J62/dFial7kFV+DupmphbMZWWN0NO8lXsX6Nzyefh8s0hUoytVKR7oiVmR1AzBCi83c0JYoDbXOYpBCOav94/sU+lQL3XdDvYV1OoARp3oWOQCVfFDw5HtvQPxnMfS3f7v8XOw8lZsxvKFsOKKzUPNsiXt8nfMno8mTGMLvwDThyGoU0UAdBodkur/sIhq5ypk3gIwbVs9OkO4mD2I2Pec3+MDkQXbWajePIJMBD7g0dk5OgGONsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sdYwEhiJThGesjKEpPtLJVOEIYnpGHVRCpPQbyv2UI8=;
 b=Y+QlaNsimT0ORcMGNF6kkdgROPUzd8Cj1owOBASjehaRcNMsHVcEV1QE+NRIL+jQRPmDl3CRSDpw00L4JctSB6OsdtWKuzGrAG+g4ZCFQxlR+MrzKzwXE0MUWgkEhTCH6otQNRBMlcY1miXdY9e3wM/Z0rl6gT21tfA/xrtPnf1m1eGyJYcU+dEEw96r9Hnt76Z0FR8L51VdAKRTIKqbl3KBB5CF3b9ObIyeE6GcbftQ0xx6W/F9sFJeI/H/Q5EvDGQi9EjOkAkp+GOX3fvwhM/z+82v1Cs8bOmF83F94xqjb6WBQbwcLyMdSfMMt2lVUoWSdE0J5KYQlI8AHown5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by PH0PR11MB5127.namprd11.prod.outlook.com (2603:10b6:510:3c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.21; Sun, 28 May
 2023 10:10:20 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8%7]) with mapi id 15.20.6433.020; Sun, 28 May 2023
 10:10:19 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, Vladimir Oltean <vladimir.oltean@nxp.com>
Thread-Topic: [PATCH net-next v2] igc: Add TransmissionOverrun counter
Thread-Index: AQHZbDpn2JK3jVhflUSI5puiu0TQs68xyOCAgAAHwwCAFIX2IIAA5i4AgCiCLhA=
Date: Sun, 28 May 2023 10:10:18 +0000
Message-ID: <SJ1PR11MB6180A8759928896BE0C04A0CB8459@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com>
 <84acb1a0-f51b-cd2d-d42c-5133767a6698@intel.com>
 <20230418171904.2d01642c@kernel.org>
 <SJ1PR11MB6180117EC9550B1993944DE7B86F9@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <20230502082734.0f2f88b1@kernel.org>
In-Reply-To: <20230502082734.0f2f88b1@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|PH0PR11MB5127:EE_
x-ms-office365-filtering-correlation-id: 44cb2a14-2635-4f72-5c03-08db5f63bd8c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LlWfNFnG4JZrYQmZ047ZaCRZ3PAyEOSPeRefiLxZK/38QUv72zpEtKib/WmzntYf3LSnEDtqZuuUeihTKuKIQA2U+houetUEtRuvLqCT1F1s+tn60W7yj12chlqVLFz0dVs9/Pa3JfKdGiR3NwSlCvPei0XAE4tt1vHwTVNALrj+mFGzccPvYDAPfaD7dAiwMRX7sAT409ldwZ7c307mRpOeD8BJI4atZqB7XPpUZ8u7GiZJrohEgaOQ9CmmOALD06bAE/rg6ml2HGXcpuCCHtDEWzgbjoYhweNDPcNzc1uw6wZOYzfrAYmcVgyDmykrQxNC/F1m6q3zvSuA8RZ+ihIQnjt5ayIpBcdHcD6/AaM7FoGy1PP0/7b/fRjUvlKWG1lrYO5ra+JGEV9fMWr94QBa2Uqi/unsAmQF/e2/fOEEpiV9LpBLs4miu8pzijI1E2Oj/Yeg6Cb88ZUfovYdJj4GpuNBlc6g6FVGqkiWH5RqT0zXu5gAUBiaYbxX8ipQ+csSgd8OPu34nug8SrLy2PFyzc0Y5kXfhb4Otzv/0ODrVpWqHlVjutrdoqGJakehDOLhq2Mow7wwqnV5xYnF0VXmShlw5M4zTbTFJyrFHplNHAQwFyDL8gNwhdKS7h+E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(346002)(136003)(376002)(451199021)(4326008)(33656002)(86362001)(55016003)(186003)(8676002)(8936002)(41300700001)(9686003)(6506007)(83380400001)(52536014)(5660300002)(110136005)(54906003)(478600001)(76116006)(66556008)(66476007)(66446008)(64756008)(66946007)(316002)(7696005)(82960400001)(122000001)(71200400001)(38100700002)(38070700005)(2906002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6hayBxaoGS53s8FIHfkIkM/VNycORRiGE8bpNCm1LKXrukYoyTJruB4ILxH9?=
 =?us-ascii?Q?XLdA5s7K9A03O/iY5kK2LUcenFaBrwiNQIjqmz3RDsMQMM5Gc9MUYOklO/aL?=
 =?us-ascii?Q?rRbdssvbxtfv8xJVn8LwvoB6wX0vfiDl8KPDRcQKVFjpBAdiitBjLlF/5fsR?=
 =?us-ascii?Q?DG7tRIggytk9H7ZxdNI7mwdPUgGyi0YKjiUJD9tV/+p7NrJARIRI9zGrc2X2?=
 =?us-ascii?Q?U6VkPGii6RZSXYZxw8jyx/Z2/wBfGG69/LJbAFkCZHhy9+lsVd394SA3yy25?=
 =?us-ascii?Q?1r+ISKHPn0tqLB5qVWx2Bzak42MOyH9hHjb9bf+bqxJD02fROogyKcr/Nz1r?=
 =?us-ascii?Q?1Zy0ijQB5gB0Nqs3aLNJcIu22EMx09MMQu1LWBDDmvxSRNWOlGu5l+8F8KX0?=
 =?us-ascii?Q?y5v/QeEInaVUN4NF55e7diOcG2xFzXPZgSbGY8vdwyvsdfKnbsspZebGSeJt?=
 =?us-ascii?Q?aawT7fBnK1+AunTobLGHxeTiC5OkBJX5y1H22pRB6OmBFwjivzqLGpQ3/1Qp?=
 =?us-ascii?Q?PohdKQr8QzI+5LwsBDbqVuQPEs8NzkUSKiWTu62toGGxSr0/yGxx5+1J5QCf?=
 =?us-ascii?Q?9/eg4bwZX43p7EIK2LiPRs0I0SUz8RW4elYDAfAUHiZpCrihCFo5tK4qTI5Y?=
 =?us-ascii?Q?tYNUzSmA8wDNPaDZcpJKidtYmAFhqQfUGYqDq2IN3FtM/yXRnDE2Kz1rFxte?=
 =?us-ascii?Q?1ELEsB/BqSp3VCKJA578a9i2VMCv+Cf+CJKylVpdpOPZQQrs/KQUAJuKcdgx?=
 =?us-ascii?Q?Xo29OYzT8kWJVSiRa2/F2SBPK8qjW2koyaChoL+u6fmeNaUNTWHmgrPIjKTQ?=
 =?us-ascii?Q?05OYDVVI923zTrQwjI+g12drZgI/vjbwbFE4gIGTueHLavqy6Wod9WoH9NKC?=
 =?us-ascii?Q?3+p44LLPSePAxx18/tisgybNyMarAq5KZBzijbFcpfMbACZ1i+D2bn44m+es?=
 =?us-ascii?Q?/L201R3LQkgIbJJH6UWTeRjAynWtiUt0mqkPM2HzTB8sv2o/1d3VywIpuMLZ?=
 =?us-ascii?Q?LJhs4J4+bmuhv6rHjYTX2pyKnTNc8B2GVHHzEqWAtX0z86jQ8HTVfSYlSGyA?=
 =?us-ascii?Q?c4Msm+TqRHZu9+A/7oPaKwP3ie6HWE6cG5EdqIWX0kSlmDj1vHf2ZzJ3KSnu?=
 =?us-ascii?Q?/79CLhRxC03E9Jt94nGEq49MD6gx+qnwo/i4HAL/yZQw63zcVGT382UMGds9?=
 =?us-ascii?Q?Ly7/wttZdRxg2WNlVt/IPGFriDxJbkPLObreEA/yKqHA2HbLbBAGezbdjNz7?=
 =?us-ascii?Q?FEz4ZMvl6nml91wry+PLb397+45NN4mNeh3We2xgQM39l6/W4ay6qjiAl3It?=
 =?us-ascii?Q?XzrOpbP3MWZb5gT+GsNnUqIRpVGcEu47X9/IQ1ZiwYURIPsLs3I6M4ycqTpZ?=
 =?us-ascii?Q?Bsh5EOOCw5vEKz7ME38Zsc5KFOR2MhisJM/2LNp5UOC5zfvioJD5DvNbg3Nj?=
 =?us-ascii?Q?JAw7xTz55ndbXaWGb0WmT94fb0H1678iiNfQgy3BlFmWPzEVx12hbEP1Mtz7?=
 =?us-ascii?Q?/t/GeXB29t3/vaSMj/7Qflx9e0vOxvA84S7s5xUn8cLjysCrdFfiV02AKOjJ?=
 =?us-ascii?Q?6exDNfZHuHBayFPlnGxoaIlcRN2xPlnVOf66Aelo?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44cb2a14-2635-4f72-5c03-08db5f63bd8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2023 10:10:18.9148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HIXXTplLT3MRvKo8/4YMANU5ouhrzHi50oUFU1/rfbNCtLBl61Tio5t+Ycej59rq0Vhf/JGWYhQMsV0VlTLOk2jIu76FVGrqBer9BwDZ5/uNMLcYCwCpjtZ7YrbFIx/d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5127
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685268624; x=1716804624;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sdYwEhiJThGesjKEpPtLJVOEIYnpGHVRCpPQbyv2UI8=;
 b=MPlrLWZFeHFuduALcKbcW5TKOdTk2P1qQNjuvryNGD/E7/ZA31kEr2ZL
 y966o2ZivXqtLLDC7Z5DscsLcnsa6PTEKVyKvrINadB1Nd9JAFO8P+h+k
 SgpHGHLDoZmIiMlH+dmYG3VfdrqNBGWBDFnXgueYEJcrrplZWr8GgRtQa
 l+rmW2MjsyFGmcySrkvmMb++T6qgmDlycDFp5PLc80b+7UmpK0GkQuYpn
 RaWvIMEN2ul7LlswIvFq9t+cDgOY1j/iJGg0tRyjZQnMvyZfh1nio70uZ
 i3wgn7DphDSkquTso4ozkcL1aFTLNz/vkZuXYGG6oSLfoaEtmUuLD5yIg
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MPlrLWZF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igc: Add
 TransmissionOverrun counter
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jakub,

Sorry for the late response.

> On Tue, 2 May 2023 01:47:30 +0000 Zulkifli, Muhammad Husaini wrote:
> > > Seems like something that should be reported back to the qdisc which
> > > configured the gate.
> >
> > May I know which qdisc stats that we need to reported out? Is it
> gnet_stats_queue?
> > IMHO, gnet_stats_queue stats all used by SW QBV and not by HW QBV.
> 
> Yeah, definitely not gnet_stats_queue, the qdisc used to configure the gates can
> have its dedicated super special stats.

I'm not sure how this super special stat will be link to qdisc. 
I'm include Vladimir in this discussion to obtain his thoughts, 
as I feel this will be required for other vendors as well if we can come up 
with a generic approach.

Hi Vladimir,

Do you have any input about this TransmissionOverrun counter?

Thanks,
Husaini
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
