Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B36F982C4C8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Jan 2024 18:33:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A5C082CFA;
	Fri, 12 Jan 2024 17:33:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A5C082CFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705080824;
	bh=VNDMoILoliMxXSOUPlXcVSvfhsgnqqhFTh1oyzeWH7w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oK9Ks2XZQ4f1GelMR4aEzbWLldtdnU7UIiAZlTg8GwtxRc8pP1UEp8bsGjXSNd5m3
	 2GOPxdvIIa5iFe/Y4Vm9u+WEgj1gbI4vFa6CF95/RRxVVl992rxrBZ4VV2MfhQaemV
	 QTJCpD6fi3U6cKIfuY67zrJxSdUem7DXYeOQvyoVPh6jcB6EJHx+aFbII/ClHqqj+l
	 l6J0aSwKH99bnn1iYKpoMkBgNR7iMibKncOcaOsSNTLYLuA3NeV703qHUGTcMggzOH
	 FNa0+6whUIQjtjXAHF/WDGhLS6kR2Nm5wfMEgzbjPI7WWnCkBH8jjAr/l2lB+eWw3s
	 ENnE/8zsXjMOQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZtSPyjZ2p3-G; Fri, 12 Jan 2024 17:33:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C47281E3D;
	Fri, 12 Jan 2024 17:33:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C47281E3D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 418531BF309
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 17:33:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2572660B3C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 17:33:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2572660B3C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xBB_-71UWsJU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Jan 2024 17:33:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7B2C160A5D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Jan 2024 17:33:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7B2C160A5D
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="396373970"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="396373970"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 09:33:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="783103832"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="783103832"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2024 09:33:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 09:33:24 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Jan 2024 09:33:24 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Jan 2024 09:33:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CDchK8YZmgBnwu+zF6Fd44cw3XQP2W/L9bRGZDKnzP5RPUKXRcpcUxGwIc/KqKkTLGJf8DSGeA4OUAMwVnl4ZDp3qD1wsAWIpnu9yjEzp0M/gKjAihA0ZJ6BNQRoTgZxCHZ/i0BYFY4D6qZZX78JWWdCOHUgKqzpy44Z0VPeMOlCiqoGSGDAZxe6b92JRRGL6sBmkk8OInMWjfALzeVaMlRz9Me07H6e4FD6pVcGMSEkml19HN7VelSaRlUzJEJ30WYFIE77v+OGifHWRuRjgoQdW4Uz0UeTjY03s0pVzU4DilPvU+5zuQJJqv/pWh1RdJCwlK5ZO/l4cUX/py9EjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VNDMoILoliMxXSOUPlXcVSvfhsgnqqhFTh1oyzeWH7w=;
 b=O0t2+FL3yi8amVkrXkfsjCrRMtEuwPEX7I2G3CkBWX+gAEO2zI/LbRp9HiQk0O4pupH1DVEespHPH5EiRJDyq6FP/kmgtZV2kXnqX2jHyTd9mdEa+0K4gmrc3k53juU8ICw/HfxsM8s9KJL4jVz9haA+FHgRD3MJS+Cemn+XJL8MYz+f1LB8LzquaOLIR42fHo3QivBP0Ikc5weh7TwyTVsCS15tiFRmoTsmfwTjk920K/RGy1e3wjZJhX6prY6w4q+5NKUHavaOr30h8yZJspMXcdP+xOliGcc1N+ECXrePX/FZMyX/p02jh6gUzQXuF/JqkQoILl3GgEGgO/pZtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM6PR11MB4707.namprd11.prod.outlook.com (2603:10b6:5:2a6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.18; Fri, 12 Jan
 2024 17:33:22 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7181.018; Fri, 12 Jan 2024
 17:33:22 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v5 iwl-next 5/6] ice: factor out
 ice_ptp_rebuild_owner()
Thread-Index: AQHaQjD9Wnk8p8cFJ0iadbiGVHlt1rDWdT2g
Date: Fri, 12 Jan 2024 17:33:22 +0000
Message-ID: <CYYPR11MB84295B5FDD0DE11F0C1C5151BD6F2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240108124717.1845481-1-karol.kolacinski@intel.com>
 <20240108124717.1845481-6-karol.kolacinski@intel.com>
In-Reply-To: <20240108124717.1845481-6-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM6PR11MB4707:EE_
x-ms-office365-filtering-correlation-id: 046bb88b-e4a2-426f-a362-08dc1394931e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wmbJShwWVfiHX9CnPexavFZTgCzdL329tUtYec+avmrRYUp+J9wrh08+g54pN6yDtzu2tMyJLmrPdKvkEZwwYbh3/3UnPcSjOTmiRMay96EsRzU7SuUP6+vrXyTVdr/JY6Z8W3TK0Mn0jCAUwPZ6IxwJ1v85crASM8riNbRqhgJbptJ7mEsw669DXcYssHf+MGVVKmT2CxEVIrDsHKBsEQEclreKZixcqFXM2GejVug8Indjy8I10Rl/clrkJtrkjroB4bI6yXGwBz0+OAq1cBUkcjzD9dL+7hiV8BUZGIq/gJkKYBDFICZEBAtNWT/jCMl7B+73rwotKer7YDqxtnNly6nFdwJBT5/v2E23whJ2fZIve5wt6MW+5n0oYcro/K/i0ufDr/1Q2JboybaaNSJSKCJCjbYulJK9c6fYQewltlvijaTpcaTkYUIWrO75lfomrofxQvgThDapD9ZZUi2XOMlafhc34KTp9dwMpD0rMkK1LNgDkL2n3Ju+mBMCzEkQtmSlr5XOX64NC03KCCCrj4CHeKgDfFedkcd94/1dmUT1UazKfKhuSbQWoC/EoIQBi+QOHC2Fo99UAyt3IHSK7IkMvJvk2BVMzao9Rv5pOCLnzPUnfmDHhyhkIPjW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(366004)(39860400002)(136003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(82960400001)(26005)(33656002)(107886003)(86362001)(41300700001)(2906002)(66556008)(66946007)(66476007)(64756008)(76116006)(66446008)(8936002)(38100700002)(110136005)(54906003)(7696005)(478600001)(6506007)(8676002)(316002)(71200400001)(38070700009)(5660300002)(9686003)(122000001)(4326008)(53546011)(52536014)(83380400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Fr/YDSnqSibaqCKnIn/8lVmIvK0a93H9R1oW8tmrP12Q4AGrk4otvs+NmYBH?=
 =?us-ascii?Q?94lntNKzGv0EPiPzHN5GZx+mrGW4AlVT+nMgNj/r1gWRt6Vddlvi0QC2tdOy?=
 =?us-ascii?Q?7QAT1ao1/X2Fdr40Yzs7/OT1BgV9eBDxmEyh+ogty/e7y8QNKmvWA2FH79S/?=
 =?us-ascii?Q?e0S+0Xj94NZuK6kvpULlPz12B2cDVv151iXb7CpMuqPfr+ZVNUSaLvgT1MKY?=
 =?us-ascii?Q?m57ynjeJbZjWTYpGN6K77d0C9nEPE4VnsMPjUBaDcuYSUkd8CXtL0c4SnclS?=
 =?us-ascii?Q?HisrmSqkjPTZ4T8Vkd21yYq0W9zMtobb2f48vPSE7KIAdCYfU/ZWS5iHw64N?=
 =?us-ascii?Q?WwwVtltuyeZWsA33ual9hNPSsvoA+ESxdMfHzF3zExTOxs+lhUvHARhzC9if?=
 =?us-ascii?Q?n9Pk28cMvnRc171LyyKpl31/i4eQLhGRLACJnNsVlHPzHBO0WSAefsKAysg1?=
 =?us-ascii?Q?Td8uDMaD+ih7hXfAVWjIIOP37cO2ElUrrNJt4m7kcsDOwKSrTmGptJIKrmfM?=
 =?us-ascii?Q?fAOtNTVmkCmHbXIjkB0b/oKeS9d5A0NlI7qXYZbtOnD+wlJYcmiPCZgmPRfI?=
 =?us-ascii?Q?ZKOb7FWk35opP58LggoLDPZcuCNBhkK+SHKxYgoHQ7Zl9xyiePbEs71RvHuy?=
 =?us-ascii?Q?18/jUbU1NQuQ6aeyZK4uPAWaT3TFdgCYA2/49j1sARzQfs20wuHZDt7ibrgb?=
 =?us-ascii?Q?56oisiv1POV7/IeCY19QaZHx2/heYx1gfrQNlXEyj6UEAW+wJ1CXdKoYhnPi?=
 =?us-ascii?Q?pMYGG7dnvDgpGvuMl3+suimQlbkVEu3iTOq9xjHAccVArOLs9ClZ4QlWO0xu?=
 =?us-ascii?Q?aPjW5OkQkzd8EbdjF5b9sabDdS9i3bvsH8wLM5YJEvS9pNIjyVBqXCTcQWVj?=
 =?us-ascii?Q?PszW912qtisA/xQfz2DYzdzTfWbYIpvv3KvLsTL+5qSmO8ZRLdZRj1NMPUw1?=
 =?us-ascii?Q?Fc8bouaURqVuPRD5iwpHjNdNZEzrmPKn+QBK2+bd7Z4ubIwzHnnSPPFhGx+m?=
 =?us-ascii?Q?FmR9nwicjVWiyVr6Le3Wf2b/0eYSePBBzXVTE9xcEY5qgkU8U2C0mq4uV3Ev?=
 =?us-ascii?Q?m0VVZ9wzcQHKfpi+G0jEQjj/kRKsSUi8H+K/MLmXN8LZPdGdAOW3PUrXDQ3p?=
 =?us-ascii?Q?gR1ByNNRDX/4XLjhl09sgVHIemaRu5Z3T4QAEAY/DOoj6CmGSLSODK4/pmEN?=
 =?us-ascii?Q?usBO/7Lu5uGDMlJtvBH2ZWbBQXCCnboBqfXMPFcP0o13hZIIx9GXSJuXhR9h?=
 =?us-ascii?Q?IYn0FZb+AB0hfHdLIpO9yx+dzaCgjv+EvImqquV0LkZBDfK4RouDeNGhVjHj?=
 =?us-ascii?Q?i2UO//udLU8kRKOfVyWeFIX4o0RtEDTfPj8Y8P4PFABtrkDd1CeYvEOWUVYs?=
 =?us-ascii?Q?Nv6o8xIXiaZFomzoNTxOcnZfssRZU0O9hGxHa1kHM6SJRST9eSUl1DC/MK3E?=
 =?us-ascii?Q?EINsCsFVv0h3a/Mk25L77PmTmA/c1i18uJCtQZuuFM7T9paQ/nVA32arhvq7?=
 =?us-ascii?Q?UIq6o01LF9X5BvnMgShOkZ2ePpK3+gjCwq19YEOe3fiZC9LygWMAdoD9GzNP?=
 =?us-ascii?Q?uNSrAsXlWHCVsOU66YTM8w3eHktGy6vZhqJ1q1q3NSSOiGWyXBc3Gmf0xTg7?=
 =?us-ascii?Q?yg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 046bb88b-e4a2-426f-a362-08dc1394931e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2024 17:33:22.3753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3TVK0I0VVPrBWu4MtJpzvFJ0m2/cEknbDKJapFbi1w8Zx6cfaPwJlH4KclGGF871VOwpsiSuQvx12eiPbJee5TIAlivXU1d+Q1+Fu6+s1tTBzpjBncqYNNR0xLchn/72
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4707
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705080806; x=1736616806;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UrFjtTduFLnpC5IuubU4Rco447XtpFmIuKxQ1EkvqZY=;
 b=cgnhV+nyrcjuHxY44G8rTMbdnkWDL7VOn1wNDeH+8/nZXeZHsjYXiO5u
 m30RsLb2cTtnE/+5+8iAaV/K6T9xwCEpyEy6VC9PYTEevX/xVmTeaHY0G
 FZ4UKGGqeLtXTMPOgmJiDAHEFChhgxZal9HPR6l9HNWZBRtO/BDSGj3Ji
 wS27jM88tf3k8taVS5n5w14WojQy0SdXUg64m9QUp2iS8Hxf38YvEg8h/
 QkRQQxaEVYm0mOOCaO05IPMaQKu7mvX+qHwDLrO2TLHs/V3FmddP2Sp9A
 Ur3quwVRfwa/7yDL9oe5wsEeqHXGQuOCf2zr3ETXIwPHt83vgrs2mpj6x
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cgnhV+ny
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 5/6] ice: factor out
 ice_ptp_rebuild_owner()
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Monday, January 8, 2024 6:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; netdev@vger.kernel.org; K=
olacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l=
.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH v5 iwl-next 5/6] ice: factor out ice_pt=
p_rebuild_owner()
>
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> The ice_ptp_reset() function uses a goto to skip past clock owner
> operations if performing a PF reset or if the device is not the clock
> owner. This is a bit confusing. Factor this out into
> ice_ptp_rebuild_owner() instead.
>
> The ice_ptp_reset() function is called by ice_rebuild() to restore PTP
> functionality after a device reset. Follow the convention set by the
> ice_main.c file and rename this function to ice_ptp_rebuild(), in the
> same way that we have ice_prepare_for_reset() and
> ice_ptp_prepare_for_reset().
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c |  2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c  | 66 ++++++++++++++---------
>  drivers/net/ethernet/intel/ice/ice_ptp.h  |  6 +--
>  3 files changed, 44 insertions(+), 30 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

