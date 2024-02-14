Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF12854729
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 11:32:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C86DC60EF4;
	Wed, 14 Feb 2024 10:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GjrqJ6_3FDrs; Wed, 14 Feb 2024 10:32:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09F4460F00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707906752;
	bh=Rd3Si5XmMdbr8etEwqAvRZ/apAHuEZzhTUstXyvL+PM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fUkT7F6b3TJlbYIWhKrJJqtu4z4aCqC4PI7BVCSQ+n0qPLMiqpNO2JLcPK+7QNtRc
	 dT4u2AlzEDjI4BpHX1pdFT0flQh62EE5TnX91LaJmtnBjCIN+ZoNVmTfTDJF9SFIaB
	 dfICyicX1JhzUEzmv5ZXz7blPg+33LlYZvuj5qZNfWdNk4BRViZMCMhg2SIJyitjFO
	 XiuEUx7FIk0K9xU+zsVKSZwZnnN9rEzsRnoIVb/hHsCkeHvG32jp9lSWUEzJespeqY
	 NO/ae8arfk//wwOKGpzT8YuOb2/7l8pnFC34MsxZvVR7BI7+Qwo+dSyyQ/FGSeNymq
	 WJ/v4eN/VjSRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09F4460F00;
	Wed, 14 Feb 2024 10:32:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E5601BF5B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 10:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 93940823FF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 10:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KLtCHXoN2K60 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 10:32:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D318E823FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D318E823FB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D318E823FB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 10:32:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="5720213"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="5720213"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 02:32:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3127292"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 02:32:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 02:32:27 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 02:32:27 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 02:32:27 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 02:32:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j5ItGdryYl6XgP9fCGuFpMTiEOJWqprnYWoD9b5fW/fT0XQi1U8idSQHsHQ/yqQOdvzhui9+mMmVzrgSoy8hUVTDiGV9ThV72XVzdIRA3ikrijKorU6qYerNS7vYBrtQ1fHbylYd1WmpXGvVGQvTeDR+8tj4mnmJDEwz7citARNIInnhm1f4SPNl8BLIPzhZUanS3vb/G+RE5+jkMvp4TegBYDTar1K8ipI55m8cYsWhtUiu5vvzkvIEEeamvebCD2Z/N6mFi8O/CbhLJOatYOZpxBSMKIU4KRRMeLPKGZnCq90OlSF7GLT/rw1qTXwwixZWLV9zRz1Y1Gqu5Qr7qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rd3Si5XmMdbr8etEwqAvRZ/apAHuEZzhTUstXyvL+PM=;
 b=g7X/7PNdn4hRxsMCNCl140rRu9k3CEQ+XtmdCx+JbB5g1s5DeQJrpxwMWPi7OT3/ls1VsouCBm+LTYWCkIll0WPVELyqFVumNgECaWTawL6kkcl2oOzaFaNRkS+ufoSqHcEHT+doGzl6RmsgDqm01tM7axdXfsJeCFWxn9eBF3FdcAHf3IruKFu9LIsS7B+XVRLBdslnAJGOFu8/hyt40XCU/TZCMPZgiUKgwwzPY3yehvmykFmNGcRkpZQp+cTlmE+uZNDV5WIkwUf9sgNmJ8l5LmQ3VNWEF2WxapDNJUiWKynqp4w+aIOT+VomUpMGNUTix1O2/kIDVNHpcouG8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA0PR11MB8400.namprd11.prod.outlook.com (2603:10b6:208:482::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.35; Wed, 14 Feb
 2024 10:32:17 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 10:32:17 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igb: simplify pci ops
 declaration
Thread-Index: AQHaXG2/HD27JXfUjUeMqPUDKfMZerEJqKsQ
Date: Wed, 14 Feb 2024 10:32:16 +0000
Message-ID: <CYYPR11MB84291EE45CF96C20CBA1EEFDBD4E2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240210220109.3179408-1-jesse.brandeburg@intel.com>
 <20240210220109.3179408-2-jesse.brandeburg@intel.com>
In-Reply-To: <20240210220109.3179408-2-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA0PR11MB8400:EE_
x-ms-office365-filtering-correlation-id: 61c975c2-6eac-41fe-4836-08dc2d483770
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o+5Io+iF0HZpT3NvqKS4fMYwqHbG7VhsE6IScU8jK2W2tNeqxI4MT3405rhebxuirjyHXlyR/HZ4S8tjLCPBRuEo5EYGURpW2MeDI50C92jAcUDflukDeT61GXQTPIbhQ1mOvKrI9Uuo4ag7t9lQNgc4uVjqRNOdeI8nBMD6rawGNDmeWUn01u2wKDLlgUYOtdix2CSF237ztOk9WKLRhugSJWI01iPpBmEd7GFD2gbbbU0dV5k49JQAGhto1piXUt1r8i/H9Szt1iEiLBTrmwVa25R8G5+TlcWjUA4pb8L9UVgvAWOZFg903wYMtRd6xr2LirwhUOCVWqcHUrN3IRHUVAK46lI7+4wsv/KMFpyUT35Zy2gezE80C1HKPZoKdhiN10aNurWHEP8f32FeRhk/4LjLsXYP2WMbOFfHpcuRO6/w29wqTp+4y5EA3Z2NHGU9s2KVH3oA8XXKOtvAXQZHmULuHsHrd8Llccm6q9xLKH5N7a+r1ZzXOyS+HXe4/lElxcKBYxPtoSa27TvTbzvjXcIEWVJh/iZ/aP6l23KgB3eK/nDUkP4S2eFEhNE2tNj20QKi7BrlsSJlGF4rnbbsXiDPtl7PkCXvjAem+0q+7bviG/8u5uM00aUQf5xL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(366004)(346002)(376002)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(33656002)(38070700009)(55016003)(41300700001)(316002)(64756008)(66556008)(4744005)(8676002)(2906002)(54906003)(66446008)(478600001)(8936002)(4326008)(110136005)(66476007)(66946007)(82960400001)(38100700002)(86362001)(122000001)(76116006)(9686003)(5660300002)(52536014)(26005)(71200400001)(7696005)(83380400001)(6506007)(53546011);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zYNiqv7O7NN3lmnObePhDKMISG1meQX8XKloyPUG7uq1wwSMMCeb2h79yAxd?=
 =?us-ascii?Q?/v/fpMB1mnExNDTWTDac8eGwPpvytOOH0JGL50eRcy5++0BVxJOJn9usPVg3?=
 =?us-ascii?Q?ALW8JFccuwuL8ZZl5/zkzXsZ/QEOtiSrD8/5vxS6XDgibsTXCPyRJrF4vWw+?=
 =?us-ascii?Q?PwrHG5APny+eZcwF1hg02plL6GyyHGhbBxAz44esDlrgiKaC/0jyEmVEc1FE?=
 =?us-ascii?Q?Cy1dllNCY0dIUn2v1PBBHNLRvGXUfLmSx25mdjgHrm9jzoTv+z03+1L4WANX?=
 =?us-ascii?Q?LrFD0pumPfs3Rl/mmaA3AyRrLgJnAPR3Q2OZ/Uo+DlluzzrlIjFcu8HMDqNp?=
 =?us-ascii?Q?V8Y179PSftvlqz0r4VshoW7CloA+dWIVZ03dttWCT3hwDTbGXciWyv2/Jw5C?=
 =?us-ascii?Q?o4now9pyI5BeuRgtlvP5N6GP7zfpoa3yNrA+IGdLml9FND3SjGOqbahHqmMk?=
 =?us-ascii?Q?RQboBXMsNZmKThWsJIG7g0uK/GQpuFWC+CB9Tjm8NpY/xmVSIlykcvVPuQfC?=
 =?us-ascii?Q?NSXezvozuFSMT0/AeDJqVNYWDz+L9MQo6Mlrezfv3faI543fBePhQU2sIYwK?=
 =?us-ascii?Q?q7+RZVlqNczTtNsjKAwHXYQlLeTosC/ZEyqwt+YXd5LkrLNpuDJP6LLMQJ90?=
 =?us-ascii?Q?yHqxNIHN8HxCqYF+/Q6INdLz2F3UDvLldpXHkLoDFrdsFiX/tdeuaCtPw+EA?=
 =?us-ascii?Q?xdgNGX4vkQ9fyMOKCmb3dlyzro9ey+lk7WjW60Jw8keQ086gK4HhZe2WHORj?=
 =?us-ascii?Q?qxel0f9i9BaHslyFMAcGYBGEgI9ySnnXP2spvN9SlP041zCkkVrcFUORmzC0?=
 =?us-ascii?Q?6oc2cYI3AEDEZ0a4nRJAZrC/VpbMHA1Ue14oD2/090tDfnMOaabG83B49y/Q?=
 =?us-ascii?Q?6NWdXaTuWgFSjMov3+5xdJgd5jZlHZ7I5uajHjkEJgwbkNc+tDqCeBqxA/WZ?=
 =?us-ascii?Q?LAUizzVcBL0Djj8Krt9ip+zx4HBqHkm3YokqkZezQa7/cirMTGyJbbSrjLLh?=
 =?us-ascii?Q?brAcZj2psIPEdi2z3ovMYQJEsu2c9UqPaC1wBPfgGEUxeztR9dvI2SizdA+m?=
 =?us-ascii?Q?VQIdZzwYp8q57ImLwiJNwRC66FczxNcivfnzdo5wXBp2BCcMMmTWBAoCpfg1?=
 =?us-ascii?Q?LRi3hHStrjuKvVRUowF8ERiUwKR0Qg2+JErkktdMArrFI5IV99+2AfwxKRmg?=
 =?us-ascii?Q?Svjn3jit2TxkzqaYxbRYeVFifyf6LcIyZaDydbK1e5CGs4XISYptTD3u6gge?=
 =?us-ascii?Q?7jRlzXRm/Y0jaKkddu3wDrz5an9kF9g6QQSnR8nou+2lShlcb9yKYZlPHfrc?=
 =?us-ascii?Q?uW/Pc2B2AYbiIrTnhFDPr0ltybtekQsdDVzunyvaR3bMNBY+h67p7q79E7Qb?=
 =?us-ascii?Q?EV+saoLYV+oOvGRyhTrzH8AfbMAT+ivYGlqQPL88YUFWQirW4gkQFK90vlv2?=
 =?us-ascii?Q?vm1s+ng0b1cbnMnjh49thmPpovop9svQawSB5HbuO+6wt3Ji2v+C8CgOydWo?=
 =?us-ascii?Q?j4gPgzCHcy96+5Yy+fTU3mhs6eDsJ3ELvleF0CI9vlrVmbLwzgTZ4sAgArQs?=
 =?us-ascii?Q?LVFrMrXy4C7U6McltSSOMsso0DIZLyD/Seck3pu8EfraLrBWFdYaljyRdltx?=
 =?us-ascii?Q?tA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61c975c2-6eac-41fe-4836-08dc2d483770
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2024 10:32:17.0250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q17nx5RjkNwIWRP3DHTvgfbaVOoHfGZ8Vhp4vvsX/JBnFo2JKTajQi0y/7ODdVLXPgDsomI4TXkNec1XDZYxpBkiHK17JQyqveuzdHkzuPbYB6n13po+qLmN9IQdr0vR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8400
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707906749; x=1739442749;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0BFt7b4xGYLtuc0gKv3inZXH7X762Z6YDoo1l0YH3FA=;
 b=hCAK4iShCL8eKx5tOhNN0oXKkmvDse2w+SDYh9RCCSdhK6gG5QdOOwLL
 /kAnM15l5UK+K9VLPZ4jkokNX69TUE8yuPKzCpw0iGJWFyfT6Z3Gxdi6G
 HwzBCNGHn2fm9UeWBHsSa98SQXwIst6/UDxVZVtoROmJ0pyvBMDQFY86V
 LfCpOd+GmDxO7mdRiHpi3n9gDxl9Bp1fkfoatCIF0LM6Ji/EnT9I4yEpw
 O90KEE+xn4HlnjumAoKxPgyNwnaQOiilAsNL6FMahI2BljTlMs/vRTxVM
 Ek6CwHvUL+m1zuU9Cz59c6ztsUvYcxdvzv4pz8J7CV6l/k+5DHa4995pM
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hCAK4iSh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igb: simplify pci ops
 declaration
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "Brady, Alan" <alan.brady@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of J=
esse Brandeburg
> Sent: Sunday, February 11, 2024 3:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com=
>; Eric Dumazet <edumazet@google.com>; Nguyen, Anthony L <anthony.l.nguyen@=
intel.com>; Brady, Alan <alan.brady@intel.com>; Jakub Kicinski <kuba@kernel=
.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.ne=
t>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/2] igb: simplify pci ops =
declaration
>
> The igb driver was pre-declaring tons of functions just so that it could
> have an early declaration of the pci_driver struct.
>
> Delete a bunch of the declarations and move the struct to the bottom of t=
he
> file, after all the functions are declared.
>
> Reviewed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> e1p v2: add back mistakenly deleted pm ops struct.
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 51 ++++++++++-------------
>  1 file changed, 22 insertions(+), 29 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

