Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BCAC67E6829
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 11:32:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 496DC61315;
	Thu,  9 Nov 2023 10:32:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 496DC61315
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699525924;
	bh=xyfX9k2abHOX9a1SLisjDqVFISzft5AgbjmAg2gN28Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=at6QRT/j8u5MdSdsJMpn9AGg3TL7Tng0hpK9EL6dwPsNa6TfRk9x/0s925atUjH97
	 6PJkeFoc4IrpkZ4mQDvbZ/np++CaKUFBl5hnsvSGv4d5kuEXaAwFbmKIJIKS8d8cny
	 52FlT1pcw79D4Ne8FGRC/A/qFg6Ptgdmlh/2qhdhpU+dtPaXTstAaAlmTnbjj72cJn
	 ti7PfMWPFYe8wY+s71AcWEL39sQDejF/xPm3tQ4FljO+Ecqy7DcP7e6x0BpjdHI1Al
	 U9WDSetqCzRRbBeMP5eGu6ZUSNh8QlDie35CBtEpArznr6KnG1v0aXWxUj+7MV2ull
	 kM6AJ8v+DRm4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6HW2KJDeog9X; Thu,  9 Nov 2023 10:32:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18C34612ED;
	Thu,  9 Nov 2023 10:32:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18C34612ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6A971BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ADF97612ED
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:31:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADF97612ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dJPOfVP3uLWq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 10:31:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED4FB612BB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:31:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED4FB612BB
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="8607816"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; 
   d="scan'208";a="8607816"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:31:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="886950856"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="886950856"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 02:31:55 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:31:55 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:31:54 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 02:31:54 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 02:31:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fJnT1jomzEfmIJ6Hq6irJH9YJbWDXBlmd9lSnISxtgWiQfswG7Ijrznmm0axbE+sgf69ajirvd2vbRllkw2w9h48BQ6TM5Kqx+V0fzfCdnVvMe/hOM6lEZ+sja4MeN+ThPYcOaWrrorCvqNXWEH3kxwQrTlzVmhyRHrQHU3Qy+jCzDAjOGF17qauNOCgP8Eu9tAY+xJQBXxlqBMK++gGe9xIKBO6/8OtaqFzoPVg6PwLNQnU4MwDLK6h8wZmcPcWO7y+zyRlQWmer6THmrxhel1BsjqFJQYOIAYYOfc8mmotUKRPBfksQccDf8PyccdhXnTHb+fRmJMFOUg5Ueja9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zW8i4xZsbCpgyRCmPov+AWzCyAe1hqx9+WufutkyfbM=;
 b=AZaFIeBiNMxWF9mQtkzDgp08EGVO0DoZj6cYzpXOLcq+4xMicOZHeL2sFDqgugOzFoSxuDyTdnyAlABMRVLaUI3pNYRJOzaQxKIS6MdHp6uTJAGzkTBU3BrlHikSXx/0F6ESJwfjOBLBesUQwy1SpASvnRrfeoLo0aMZu5CesoMotIV90Y5qSDqIPqab+QhEEQi9014evSfKxjBOcaA9fdScD2YxKRLz+XDaM2hqXhhR1j6T3lGW9/PkFSketEougAvgssjLUndCJe3QUwFwCdr3WnUIesDhlkRrPm3NQ4kv7Z/4+W6uB07YN1JkVdbydZvQa6rHTJuD7EQtKwctbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by DS7PR11MB6245.namprd11.prod.outlook.com (2603:10b6:8:9a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 10:31:47 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3%4]) with mapi id 15.20.6977.019; Thu, 9 Nov 2023
 10:31:47 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 14/15] ice: adjust
 switchdev rebuild path
Thread-Index: AQHaBm5WmkV7GTpd80CveGteYWR2jLBx4vEw
Date: Thu, 9 Nov 2023 10:31:47 +0000
Message-ID: <PH0PR11MB5013F341CCF68D457175310896AFA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <20231024110929.19423-15-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20231024110929.19423-15-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|DS7PR11MB6245:EE_
x-ms-office365-filtering-correlation-id: f5682e7d-cc53-471b-a2c2-08dbe10f13e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lfraUoNLtIZJx5LTFGn1MAwA9b59HsBrqVMBLUd/aDkfo3HYcApC44twL57ysSmnccmu/fIWV0g9znt2UUhGGcZ6llp1IX0IM3X8k5+Klz4f2F3DR811uAoxB/lSsKLv630gnMJ3pjZpXkh/65/nuFhKAXNjrtFCFNSR0O9Vwi+pv9tMm8oDxPBQ5yG55P1o29pAa7uXi31DzhAEUuNuYyL3QFpjV7l2mDRMxkLL5mWDlK1V95w/RwMBQIu8snORGh39CZd/OD5o1OwbaBYa7QVgghQoqUsajYz0yUCcaCNXogiOcxOFda3OI/Vq1HYv++5fOBXuMSmSPasWYXflMraJizocopMSvL65FLd4mgGRkjtXo9m7AUs2Mt0YpY6R0SdBzugc1g/hscW53umUkGhMKMHxgFyo4Iphk0ywLfsXmbRJ+TFal8szVuRZPB68dSDXj4i1zXas87uSiAtxjkwokVqPdthGjFf+P4trD8SdiFCVRwyHS957aG4rdQcavU9rTJ43YbGboYfnKXHCcuulHweFrMyyJFxih/thI0+r+Brf4+RehaG3XKy+Oa98U+4R9PdrElQCqgXSRJBHI/n5VSy0PXpaTd1kdtcAgV3N8pwKUwoE7S6EMOAc9EWt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(346002)(396003)(376002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(38070700009)(33656002)(55016003)(83380400001)(316002)(64756008)(54906003)(8676002)(110136005)(52536014)(8936002)(66946007)(66446008)(66556008)(26005)(5660300002)(4326008)(66476007)(2906002)(478600001)(9686003)(41300700001)(71200400001)(6506007)(7696005)(53546011)(76116006)(122000001)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?D6IXw555vrO432q/3iqfCLfks0CzgE7lQnyBVZBC3mM4+wf9CkeKa0f1bujv?=
 =?us-ascii?Q?7+ZyvLklRXPX/NbAuK1wU7ELBUAt7bjlnXbc1kVJ0ww1uHPwif4o/ehuiGah?=
 =?us-ascii?Q?CFyd0K0d/Zwudv4rsHdotmtzrRH5svFIVQZUOOb/CiglNZa7WnWTCfljnwtq?=
 =?us-ascii?Q?eLEViTfhxYWHGXCrwKFxwS+RVRpv1DIxH1fS/VV53vEiXVDvJYH0J+MVk0WG?=
 =?us-ascii?Q?jlfeXqqFlNQQFf1zGNaic8fvADTFOhps9LC4U3GpMV/gL6rBVMjdFX4zNs1W?=
 =?us-ascii?Q?7cLUk3V7wNSuuFMt4Nzm9FTB61DXCO110AdHffTEW1Vp3phq33h/NXT6wvz1?=
 =?us-ascii?Q?pMHArHMd37OGsRhYx7eKKosPgcf5rPyPYasWBaFnV9/EQXpbaCWwQYTUx7VR?=
 =?us-ascii?Q?VB4hyK08G4Ukipm44q7b1ysx0ZOUoYAh3rCkfIuKNJErgZWvWO0uLTWHNeE3?=
 =?us-ascii?Q?SFp3r+euHniBP2mEcJ2FMm52Z2JK8x85wfPvOyrP4cufUML6N4DSuMd0lAET?=
 =?us-ascii?Q?hg5wRXKS9m/CQdKwJ5sT6Wvvh+0MFbq8CeJAfsIJl2/xJnqZdDVsBdIWYD60?=
 =?us-ascii?Q?2lkz7NYNDG3M/3qNMYKzyHdSYLy8Rzx0pYMxWVl/Kdd5RuKHQr8AU3yxvDV+?=
 =?us-ascii?Q?AxI+ID2j1a8oChNk6q3vqwHjFkuM4XH8388mGMJ4NeaGytFyqoA1o1J+7UKC?=
 =?us-ascii?Q?g2B9b/+DnYI+u6rquiTQLiBvEQDOx9+3Dph6XDcuP3YcEHzvJgqHA/ngW8Nc?=
 =?us-ascii?Q?vQWAjkArmt3drmbAV9qJFl1gZMgFc66WQb5ZPilLIYGPdL2oOfuaHoi/2UQA?=
 =?us-ascii?Q?GSaccWPZvCVHqePev3Z7qR1EdTX3NvbNFtCoqZ5w8bGhQz1Cuvuq3lVi9ryF?=
 =?us-ascii?Q?gIp34wkvXBTVPwD4JFt778t7L8h7yAH+MCBuUTdKMVzhLKo+fa2m/Yub8p9Y?=
 =?us-ascii?Q?Exg08Zv2TM6mFrpWYaAIq9VA+lU9ckxbm4pXRfqsTwgs+bDvhKhgmBX1XzHS?=
 =?us-ascii?Q?ufdT0t0tpwViQ+u9B0VvWUMySMVMKBO45Bk2/sHHpvcyXDS83qXhtEj9Bhks?=
 =?us-ascii?Q?J75Q1XSZnLl2B89Cebs0p0Om6aXnUz4RE6goqKojOWJJfJu3Mwi2OHGDxVMp?=
 =?us-ascii?Q?vneLIJux+9PEf3g22MIBHIBUVpEuKMSWbTf7llTj2FmOgpDmKu1xD3XtoerO?=
 =?us-ascii?Q?/m2K3Efvj8NpiWxfff987WSCDzIuIJYlSM+IMqYY1rIvYKvEPGhUprPvA23i?=
 =?us-ascii?Q?IgucGwufIohFSk8SmngvyHCgt3AR0rKbpYGX1VE29J6htCIjqeIGyQ0JDas7?=
 =?us-ascii?Q?4iibg7LYX9oO5I1hmAIuSfW8yBGFNRf7ZojmluddnOuhsAFkCKJ98tPF72IA?=
 =?us-ascii?Q?d+YWvOW+eL9+vgbtk3HJ6TjlMZcVAzuPTuqbJ5JMFeisrQC+r/fKNzEIKzZg?=
 =?us-ascii?Q?OCj5zARdv4TsmBvFHIXgcJqyPGd9iCGl1DKjuqqp72AGAMgFt7SGQNiJjNzc?=
 =?us-ascii?Q?+6KAr7cC7v8JWkYV4Qb3fUDfyOHsfHNYhJVE1UmE0iEDQtwlh5ZVtdUcsbCh?=
 =?us-ascii?Q?3k/Vxz0yGY7OFL6VDErFcKtzaUT61xeirVFxeJU9yZkVhLS3T/GljYncxcxB?=
 =?us-ascii?Q?gQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5682e7d-cc53-471b-a2c2-08dbe10f13e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 10:31:47.7405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +0eITr6laW1tbqjQ/T97UBLHqdFk27EmzMkhrGQ1W1hN+DOm+YLAtYokPDDkaRCSjAkkpoNG2XF+ZbMjstOovQcr/fj3509VYQ3Vftg1aR4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6245
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699525917; x=1731061917;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mmoTYeC6YhEP2MoQfkr/91k8DkuYRXzKiYpNya62Ykc=;
 b=bc0rj0UBfmQafFmo3kLcO1mP0kOiXUljHN/BMlGzGJbxF+lBB9iPN0A5
 /tgQTZlJMXGB6lUGMMUDD2nFXvY1swbxDtB8eq7hh5+WeNfYVB3fWKUA0
 hwHMvlO1IFn0AUNDUNENJTBFPGVxWQhTh1L6jyPLrZQHXpS+aTGmZoNAc
 u2iKkNqWa3amo/CwhOvs5UPX8hCYbyYqIPAjcU3LHIFlROV/mtjJai5+X
 8jdUIbMPcLJK8Qx7vnm6mGh+zR8GvxUec1CqctjJg2RRkiBpZ/tsbHKUw
 vAyGDExVs2wsetm5pMouaM7lVvc5YaUXflu8bIv/gK0cE4XidOhp0cP7M
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bc0rj0UB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 14/15] ice: adjust
 switchdev rebuild path
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Raczynski,
 Piotr" <piotr.raczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Tuesday, October 24, 2023 4:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Raczynski, Piotr
> <piotr.raczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 14/15] ice: adjust switchdev
> rebuild path
> 
> There is no need to use specific functions for rebuilding path. Let's use
> current implementation by removing all representors and as the result
> remove switchdev environment.
> 
> It will be added in devices rebuild path. For example during adding VFs, port
> representors for them also will be created.
> 
> Rebuild control plane VSI before removing representors with INIT_VSI flag
> set to reinit VSI in hardware after reset.
> 
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 66 +++++++-------------
>  drivers/net/ethernet/intel/ice/ice_main.c    |  4 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c  |  7 +--
>  3 files changed, 28 insertions(+), 49 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
