Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A57B18B10
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 09:33:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6570B40F7C;
	Sat,  2 Aug 2025 07:33:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kXKwgs757Oam; Sat,  2 Aug 2025 07:33:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA0AD40F7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754119986;
	bh=qXUVZS6iZz+iZASx2rWgF0eWC5WdCKYGWF0lTCe5miY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QBcxItaIdup7gg6PS+rhIEKYdqOH+liY9nafUgf+F5y5F3SaZ1g2W9sMlUPcDWLYp
	 Q/sp3i0PBB2As28hFWoGkBjDfwsZJOy5pbfi6qMrrB3aApgtpxtpFXni0yj1dpORZB
	 QXZpQ4Ab8+BMrZV5LeTpU4Mj/OSYsK95dy+LovgOAdJQrtVtKM9sWyPpzEc65LeYov
	 MIrC8Y/loX14+VCi+QWCL/MM8sUR06MZgfOpDE/E2n3+pgE3IV1ViNNzJDqUL/Yv/h
	 t93F42zUACq1qy/OQcnpKd9dK2tow7AFHshNGIf4uX+dyNza+D7MuoqVBmTUSaeOKg
	 HdiBXQy96W0Yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA0AD40F7E;
	Sat,  2 Aug 2025 07:33:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C93E13D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:33:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F257607CC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:33:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JaL6vkdFp7qQ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 07:33:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D5220607C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5220607C4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5220607C4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:33:03 +0000 (UTC)
X-CSE-ConnectionGUID: y0wqYoY1Qt6RoGLwIi3WAA==
X-CSE-MsgGUID: t0XdB2rMSAqTVm373skQ2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="67152996"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="67152996"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:33:03 -0700
X-CSE-ConnectionGUID: 5ThrRGENSgSR8usv07Ipxw==
X-CSE-MsgGUID: fKSpwSHwSg2zyp3mq6hlbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="168209239"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:33:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 2 Aug 2025 00:33:02 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sat, 2 Aug 2025 00:33:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.40) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 2 Aug 2025 00:33:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZpxNzsvW79V74oSVV8bBmSroaw/8lkWSihrD/e30/2KkjRHC56s+41G7h7PsVTyayzmCOO8wi4w+THD4ZjZKfDYs1cqzPix4HecM9xy8OcEyqmgonT9kuFA5xt18p4hrV4hXD5Kvk+OqfbF+Q0FWjG/9f2mFk0eVHWf+fdPSqSqNrXvzlnC6DNOwazmdeiZlCiH7Ct2oxV6FkYmnZWtnQAMKkJPjrdzWEfTfsJYMeDgqEHnvcT4zxp3ZH3UJfAAq/xqM68g2ZjEcZacM2ly0Bh1Qpgs9jWxuqJqiK5odytgFvT3WnUmHdueBKJBjPrgutzSqSVR7e4q3kv4yoBUOEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qXUVZS6iZz+iZASx2rWgF0eWC5WdCKYGWF0lTCe5miY=;
 b=MSAIrNFM53gWdH8cPlJhCzKwVkaN0NX5n38PvSlzBMgeeCtMjmrko3q+xpsNOR6oNxH82/RtnSm5hzSxSgn9asEun5mlkhA4g9YKK4kpk0y4YqSIgmbplGXdU71vWZ0Zrequ6vf3tDtoZQLUfIRlQmxWjGg+GOYN+3r+2AOaDPg6lHSTre5wBOubeQ9rj0XNLl/FVYynkCZRo/25eG/EsxgL6dXYLXbaxsFogHMvkkKX9ThC8IX2UnDpFqA8soMK8ndUI0lFk10rDB4FkdT8gD9z/G7UY/wY0MRGL0M11DCH2KpJRKbyNVG2jRApmXL4lRzcwRWc/dBKMDROOGYapw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH3PPF1AF044E07.namprd11.prod.outlook.com (2603:10b6:518:1::d0c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Sat, 2 Aug
 2025 07:33:00 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%7]) with mapi id 15.20.8989.015; Sat, 2 Aug 2025
 07:33:00 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 2/8] [PATCH iwl-next v3
 2/8] ice: replace u8 elements with bool where
Thread-Index: AQHb3vFXrAIszXvAHkCScM8HGLcy5LRPQWRg
Date: Sat, 2 Aug 2025 07:33:00 +0000
Message-ID: <PH0PR11MB501307020FCA6BA775A3867A9621A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250616110323.788970-1-david.m.ertman@intel.com>
 <20250616110323.788970-3-david.m.ertman@intel.com>
In-Reply-To: <20250616110323.788970-3-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH3PPF1AF044E07:EE_
x-ms-office365-filtering-correlation-id: 9c78b9b2-c874-4353-f88e-08ddd196cecd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?yoQuCz7Jl3HTqPLZcCtOiMG4V0uJK9uysqZvVc49T+gM57N2k6nEayes2mZD?=
 =?us-ascii?Q?hAX6wZjfmoinXYxMkUqrUYjU2Ado3H+v7mDyA6iHr8bKXmLxG8cFZBut5RKe?=
 =?us-ascii?Q?PEC0UdMAz7AhctMKv9OYgN48pETM3xJ3gQiFDYWsSwSxfrPJSwzkrigI4gAl?=
 =?us-ascii?Q?ozKbEmgAL5SSqtHEyNdaQxPU0TN/OTjO4tCCOW8MWOZx8a1Duj6ogHblnWFj?=
 =?us-ascii?Q?+RV0AfGAGaW9urnK/yGnmOe8KAKTLcVY9aSTYIEzxmczHhbjIheVz2DdtNfy?=
 =?us-ascii?Q?jXjXdbII7PXQcvuEllhpCWiFJwguoRE1r2LN70AciwxF/IwGusXtFtGGvNfH?=
 =?us-ascii?Q?Nehxl/IXQBR6UecY9Log42e5HT/oF2ctURBZv/1SA6e9hNwxA62SgQ7uGrsd?=
 =?us-ascii?Q?qxvIyGeOuFwJiU6D2Ua3K9n8bwWY0y0Ss4oJEEWY1ZeDAj4HpFZpRlkN7n1A?=
 =?us-ascii?Q?txls+cTnOXbExfcYh6TIv2JEcF/y4WLULxxg1ABKP7DoC5Tk9zRzslz9Sdhm?=
 =?us-ascii?Q?ivBaqdjJbEoILlYcmr6r9MZ2w2oyfo22kCLQUbqT54eo3qj4ZV3O5iSThtiQ?=
 =?us-ascii?Q?T6thajRsfPNHNWHgmN4MHvc9L5fVCkrPKWBu0Um2kPgQCpluQbUF9rT+Dtla?=
 =?us-ascii?Q?CpTqCC2s0Lu4yLoOFJERQ1XTVzgL5XrhjZxbzQ4AgzBjszwD7BBkZnNZoTi4?=
 =?us-ascii?Q?M5OeE5eqr823I3fNn42VX5oYyvvifbNc3on8jF9+8Va9so892x6dsq6xAmgg?=
 =?us-ascii?Q?hTxo5I0YUA4Cxt/H250aJdT+ydxDbZpAg1UDyzVJLYk5uNE/VflGRaQHbUOo?=
 =?us-ascii?Q?i/xa0BolRSIC3hp6rjYfUTvo9hReqauLkPtCUgwlJ8n0nRbiRsrbtxVjBq/2?=
 =?us-ascii?Q?5J2etTGLvXcf7ZuSQGHXPslV36Mp/i7R5HUQ0uF3hyc1YDFNsnqduOGZkGUX?=
 =?us-ascii?Q?b5UF8P0BvBv8fbSKF9Wk6688z4Tfh24y0ePMUaByXLBAW9BnWE8DW/vpzsrF?=
 =?us-ascii?Q?7dynCqCnP+xqZaKXlLf6vY2F3H3eDbZDMvT+D6mecDZBxMtLBVhhFxFjEmh9?=
 =?us-ascii?Q?O4z63LhMhnerYfpSJdPrduhsh+f/7/Bc8neo8s8lXR2U2xCgGaSN2YoBJWJg?=
 =?us-ascii?Q?7SYlgdcmV/HUHGkMjX+LHAk4vQdbumBcXsNz7yBpelE93+2XnI3TCyg1bWxa?=
 =?us-ascii?Q?xcVYrgqVrLNUFan1Oa9xZYdjWe5lN2QoH8EMhaRavl0I9skLIU2TG9cE8SXv?=
 =?us-ascii?Q?nDDj25AkcVwvKeYIcScpt3NMl0lScy9vsEKTovtWnoZ12OCAP/sJOlGBa98s?=
 =?us-ascii?Q?laykPSnmkS+4FCeI038ZeILK6Y9FGvAwCDI7wzzXikGZFxMkrxZFCADHKN0h?=
 =?us-ascii?Q?7pRBvmOjCldZoTtfdbeSs0ZH0MRymiMukRE0eYmoa2PA2CgDDRkGfo02udlq?=
 =?us-ascii?Q?luT58FpOtoclF21UTu+eNyM4GWpvzHr9BYNCBmMhGd0OaSFj5z+SSA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6AhMYqnV6cjj0jIZ0ftMlcNpE3KN72hSFo6/CjoFb43lR+/pnvxLA64FbS3t?=
 =?us-ascii?Q?RGCNrrKa9xp49GY5Hn+0/s7Aa8YWXuIZqxIwypv4rvC6YR6OG6HV9/xxNLfK?=
 =?us-ascii?Q?RAeP6p0e3pGn1YhCPnpm6NEgVar5lVRLMhcyXByIxfEtFMRVn8OFLYVWHbQj?=
 =?us-ascii?Q?fLgxeupcXgu8O9jmB5yVfxkCtlwP5otT91Ap/maoAq7a+78/nxoOHqFSFVI/?=
 =?us-ascii?Q?0lae5kxiqxlY9CyMDCN5XzCuSpnYJJ3rNjORauelC0uv/jYa8ur8iWXHCmm4?=
 =?us-ascii?Q?A/cxlUkxoFPE74Y6zHxwbPulBKZQaLvZNSf/IGUdZwq+PhLcLrrjoy3pBF0t?=
 =?us-ascii?Q?ehXpanN0QbOhh4OycTF4rs87Z6TzbA0BZQKV/OnJJvzNOCG18WlZPY2TxvRo?=
 =?us-ascii?Q?938BQ18gz079w5mZgdSXbsU1BAhnwSn/VCDXjNOW9/X/s8y/OIrb8PWi21iV?=
 =?us-ascii?Q?Pc6YQ1dWvHu4mTFgtZbPXr9RTS1GXveNNIjF5cl51Pi09ykIA+qjImqomKLE?=
 =?us-ascii?Q?aUkuGenBAG8+Z3SFHCZm1Olk9LdgRoBc5XLGQsek8AzkaLl0t9MIrKZD+3ni?=
 =?us-ascii?Q?hIYUsuLZ7LSQpx9G1jFwvZJg0fxZAANAaiJ66cgADQncAF8xxjHlO4W/zqbt?=
 =?us-ascii?Q?wXO+nsxHSj9x42LTZcv08Tt+PEIxUwns0GYdfbXKUJKmJAOseGsc1syNurIz?=
 =?us-ascii?Q?JkMCQRaS9H48xTqhvz1cp8c1onz35B9MtlOSO0q5X8kVydwHiudly5/Sl7eI?=
 =?us-ascii?Q?wtqcIExfAyRIsthgaBamQOzPl8mzaIwZL8mKinQhEt+lwCKXEUcOEXY1VxPf?=
 =?us-ascii?Q?20KqScE+mwzGysyVaiZcDmoVcEckY7fSq9m4VBz2S0S0DqWj66tQZxz3zAOf?=
 =?us-ascii?Q?WwzhjvbATMfAEstAegeFp72HPOK9GvKQX+PWjQKTVJh4W71GNptF4vmcm5uM?=
 =?us-ascii?Q?7TKBBw69KfuK0kEETavgarm5p4q+4V8XJzdOW6y3kH5fK0I7hQhbmbavK21L?=
 =?us-ascii?Q?hmrja/BfFkNJGpgzgySrxRb+MJQ9WSPQgkHnxsBngpKDyM/TGPBw0+Wglggx?=
 =?us-ascii?Q?/aQUthEPIx1CGK/JA5lprrTpz3wWuRm46sriQrxEoWAj3NMHhrHdwjGjTReV?=
 =?us-ascii?Q?NpxTxLXBXPyXQl4DTZGxjrP8ZcQJlwwJ+dZfOA/hUGPmuz+c/NhVaTOnHnlh?=
 =?us-ascii?Q?87URqPbepAERwknAsVlumfIK2ryng6JCdpQ0bL4msioDCTF9EmSOMDZVgpR/?=
 =?us-ascii?Q?XNTRLOx3dfSh6YW7i7gd19Nlogkx5nIkRwY0cSCSgvICG4mWJ26xiPdD5Dhr?=
 =?us-ascii?Q?nR0S+UiYlBCnglsiJVwIHemg6HmvGWP+9sf4bkF3+Xd/3ArxnBg5nmKIgd8B?=
 =?us-ascii?Q?NfK5ysdGkhbwp0h9WxpVG9sqlGUgblqh6f36+6EWtd+JPAZVEF4zKsy+GD7r?=
 =?us-ascii?Q?dc2VJxe374zYg9bvD5/79f/U/Pq6ycYqcnM0gj/moo/yBqCrP7if8vF/xAs/?=
 =?us-ascii?Q?rcSB8dhm4SV4MMlXibFbvUTuGZtJc+PY1QvrFUyJ65fa1HKAEqCBhuVS0jwh?=
 =?us-ascii?Q?c4o5SIgb94p07rtGgMjlfZiqiA/g8NxtMMHc+G83T9IDgxN0AJYy36o7OkYd?=
 =?us-ascii?Q?WA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c78b9b2-c874-4353-f88e-08ddd196cecd
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2025 07:33:00.1051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4xJTqbQPdhj6p6e1R20egnmdv8gdoz+xO2Pi/06Gcx6iEugPci1q5aVMAjAVjh+/ngtR1CMUDChOM/jhoSM/Uf+8idllZkosU8wdWYnI0wU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF1AF044E07
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754119984; x=1785655984;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c4zPHNre1wNhh5UEfu0F67n2pzToBG/ke04ouU2K68o=;
 b=nkvdsI1KFS9iVvWBqZpVckKrN/I2wKGlx07sRRq6x8tISZXsJ4Ln2tfk
 vi5GZ+7XI9xigSCOC9/0I/lFBizfZhFPtIvGBS6kN0gebu8P7ppA4Uf+M
 YfMPHvvpCaVO3yWa7L3SfIs1YfHW/PLUah0+zeQagm4bPujgsgy0Px9Ox
 kDX3YuYq48HhpQXJ740WzZS1oD4lIXlQvcXEgVVrPBvTUh+d451n7M5fQ
 9cYTPCkucyu8b59Z3Z/s3BKFK5AkiIsxtdkdmTC81Tde2JCxoG80HPjIV
 3useJTzt0x54LNVpmxeW628R2OAtxNoyh1yEQ8At5CnCk6IC1g/6SI2lU
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nkvdsI1K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/8] [PATCH iwl-next v3
 2/8] ice: replace u8 elements with bool where
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Monday, June 16, 2025 4:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 2/8] [PATCH iwl-next v3 2/8=
] ice:
> replace u8 elements with bool where
>=20
> appropriate
>=20
> In preparation for the new LAG functionality implementation, there are a
> couple of existing LAG elements of the capabilities struct that should be=
 bool
> instead of u8.  Since we are adding a new element to this struct that sho=
uld
> also be a bool, fix the existing LAG u8 in this patch and eliminate !! op=
erators
> where possible.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_type.h   | 5 +++--
>  2 files changed, 5 insertions(+), 4 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
