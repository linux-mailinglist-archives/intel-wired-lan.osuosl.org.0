Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB20F857C5E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 13:13:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2860E83DA4;
	Fri, 16 Feb 2024 12:13:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ci-3Wb-cxq-p; Fri, 16 Feb 2024 12:13:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D99383E34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708085631;
	bh=tDidzVW2Rzee6HuCwzWg0/QpFA+IX2qsLWFiP9qkhyg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iakJs9FEZ5cLyBsl8vmsCyAWJB0yNLl5XFhS9C1yzFXykxVJuPp3mN++WMjqx5K+L
	 03qhWqQjEFXl9+7tKcAcIJHj2Udx3UoqqkbwOA8bluJGIQBJc79sEXzWMRLu/rCJY7
	 +/pZFxhSDxYaonLAFbfyoB2M1lj/XazT4EenwKNwcLvEvV9WpkHT0SkdEuzIAUs725
	 FbEZqy7YgRUw+TI+1s8gd5W705ymVyV4e43uVsWg/U2I3aR50pLPUCkGiqPr9GsJaK
	 C1akeiWGKJ9mVLszXri7caVxE9m4ajneK5g9a/t5g2u95+jfxgZAxLyA+OMamcB1r9
	 OL51098X/qwTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D99383E34;
	Fri, 16 Feb 2024 12:13:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5696C1BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 12:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 410D240907
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 12:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5-0LsW0cmi1f for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 12:13:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0697C4063D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0697C4063D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0697C4063D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 12:13:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="12924709"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; d="scan'208";a="12924709"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 04:13:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; d="scan'208";a="34606916"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 04:13:44 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 04:13:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 04:13:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 04:13:43 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 04:13:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BOkkUhFVg6crjCB5W/4XBGlUY1PvST9+LIRz7jMTSbff6wzeDmjO5rTfzaa1nCADHDLSUg7NZOTEmVzzRSLSycz1uRgp7lwppa90YIEh29oNH2CJCanIsu+mPbGyziIRGWgW0poor+0pxgpC3x6dMcK371pKf8DlN4Vo0wvzNREVdsNbbibcZcn65wacRCnoJDzqR1h5INGC/EOnVpN05VQQKDt94m6XKASHJDQYtGGwQm55y0+1X3HHmzrrgXOj4MOj/pAgrx+xM1pMmPSMr5nJ3sh5wMpDXOJB051yFLGVAtYDz9b0T27xMlpjtIIxwqx9ED2d3aJCWmJX6ZxBMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tDidzVW2Rzee6HuCwzWg0/QpFA+IX2qsLWFiP9qkhyg=;
 b=fBw/8pJ2xEXI6dHFbaoG6jh3FgnSKFfzB0F0nK2HPThP2Dbb8I8UAPckB2wC61eahzNbEFK9CYMgwBxxC5ly+a/CpF6amKMB1c/vfWL/GZJOniDafkIqamlIMDx5NmLNOnqQjfKhyCufp1Q2Un5rj96phas3eB6RTdvTS/88zxdWWn8Al+QGwO8ROfl14njvftrP/uO1Qbm7ZZ/1TKfJ5h9vKjdATDvVZYL/YsvsOSIAKrQmps/CAoUPl8iyOvS+8SAGI7+TLNvRGjQ+k42pAbWtdD1i/J8pLZrxElwO7kVZg1V2DAHZRnTettOw50v5mb6b5QCQO0GX6sEoxgbiTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH0PR11MB7470.namprd11.prod.outlook.com (2603:10b6:510:288::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.26; Fri, 16 Feb
 2024 12:13:35 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::c04d:e74b:bf92:d1bc]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::c04d:e74b:bf92:d1bc%3]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 12:13:35 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v2 1/8] ice: remove eswitch changing
 queues algorithm
Thread-Index: AQHaVefq8SlvyLdSTU6hkGx6bdk6RLEM9oxw
Date: Fri, 16 Feb 2024 12:13:35 +0000
Message-ID: <PH0PR11MB5013FE0E638F52C059BC9A5F964C2@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240202145929.12444-1-michal.swiatkowski@linux.intel.com>
 <20240202145929.12444-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240202145929.12444-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH0PR11MB7470:EE_
x-ms-office365-filtering-correlation-id: 95828759-8c80-453d-73ca-08dc2ee8b322
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bOTGOq38W4fNoIE2GKCLRGKdtFbt9y0vdvfNdCixqGCDL4MQrfZ8PmSVKH0V6Oc9HczCaePlHBoM1xGTIh6JQLO9eUaYJgWpfKNLlaie22SFZ8ZnEibGXsRNkrU41rTLn0aloHWV1xCKvwqlXdrTVpDt1LKqHfjJSt3zZ24q8dlloYsd0IDVxOAOX1YesJVeuJnQuFbbblsXlr9370gA8nHSnc890C/VPI/Ox77EYGfh9fpZ/GwF1ziPnP8B4SYhGb0/3W7fjy6n5U+hs3TgoswQ6rxYAU2jGYKQmoe8RIeAjEYxAqp9JuAER8K0tChDf0bst7Fv0nH8PZEAqlcA+SF68X+RMi8qilHPo/2zBEsBFqbCdo0ZBuDEluPr/wsA4fX7THxeIjhhMp0Fo4ccf+7dKGFbP1ACa2tSN5dNqsvPPyMnC7ZvCTHog4dUVEFk7bqwL/DD06kqW99RlYI4mw3aebWM0aI53FSpmDPHHwETg4j0+zgeRMh3J/mPYPU7iF6GQzeAR9dgC4bZihmpSC63kXWVrDsfa8N/W9/WE7duMi5itaPy1L48Wteim2+c1iWQ5MAU2queCjgor/YvWnFebv4kEYI6qHKLBkLl7n5hEKes/ZP/zW9p1fyV/lDh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(136003)(366004)(396003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(53546011)(7696005)(6506007)(9686003)(478600001)(41300700001)(5660300002)(55016003)(2906002)(4326008)(66476007)(8676002)(66946007)(52536014)(76116006)(66446008)(64756008)(66556008)(8936002)(110136005)(316002)(54906003)(26005)(83380400001)(33656002)(38070700009)(82960400001)(71200400001)(38100700002)(86362001)(122000001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5HLlL5JJ2KtGj/GUel0pI+zTj6XkRhLebw3MnDZICF1zHhQEXGDVrFudyGsu?=
 =?us-ascii?Q?tgUI+JEYOhJqzSNGuKxxYf4kOfzlYvyHgnn1Sx3Ffs56kcw0/yR/YAOISX+9?=
 =?us-ascii?Q?osAlO3eNHKWEw93NuGPaZabBiOEUvFG2mhcP6QNYuNo4oD92HI6OLIQhU4aP?=
 =?us-ascii?Q?H8tU0NHXTNgJBAXP3WaHsB6A5/1aV6eMO7uLL8bOw/VIKcy8K0T92NcrPzyK?=
 =?us-ascii?Q?gslqh+rBhJEEsuSiUeW3fvAY/ypL/ImIVDn/Nh8QkP/KSYhviU1HA3BaBYmo?=
 =?us-ascii?Q?zJKRFVZxIt58WDt4MQQA/lToWbejeedd/M1MfdUN/tGbOznU75SGaAnKwqgl?=
 =?us-ascii?Q?AH9ahlLXkzvKwKk9D78oO2OOaPL3vGeXj7kyPGoxl0r87JzoPUePk0Bvj1sT?=
 =?us-ascii?Q?bH8Dey9N0EL480qmDxytdOemGhXQXPSBdqm0J6V2VUNQGCQeq55DCAOwxrRm?=
 =?us-ascii?Q?3VEmRuWZLUf49hPVUOuGBhcfXbFVl114c0zggDoYGyC7y8DCmw+JFwXiUxQk?=
 =?us-ascii?Q?eAgPU3bDY+0mdaW7jNjU2BI8agWC2pjd3fi8x5qRr/D54pFZaO08f8y21XpL?=
 =?us-ascii?Q?gOVde3VvVWcY6lePEPD4BT5WBXLcN2MYecoOw5B06TOcDNYN6Dkv89CQp+kq?=
 =?us-ascii?Q?lRcHi++MoEPJT5zLtZsDf57cIki101Sl7L5YnC77d+litAx0+8F3axOFD6iK?=
 =?us-ascii?Q?ru93pHJKMQhAfjOJyXXEC9X9dtvtrjW1YuWoMLNTOUZxnvY1ywMZ8iXeAqve?=
 =?us-ascii?Q?X5erh0DcODiOfBk9VzxmkoALeE576SnzpRRPgu9ka/ZHEaDnlzPSzKtnnW2k?=
 =?us-ascii?Q?axWmtkzXSsNzTmwTeD7rMSAU55hNmY5Ima0ktdHXuP0kS1Ex+Mdgf+exatm1?=
 =?us-ascii?Q?srUVxv/CMcIgnluqhwsDg9y98G2VvJ05cUht5nlmAepHFHuNxVYolKuqpgOd?=
 =?us-ascii?Q?DCxWp24njiIj/ds6FDHTQdFKSAg2AS4JyLClrtLj7fPxryu86Nc8gVeT7WKZ?=
 =?us-ascii?Q?eOsoJQ6+fxKsgYLjJ79sgIJNvLvsyjREALwrSQnokzPwGAqv11XmfqZhompL?=
 =?us-ascii?Q?l5/VU3xfIPbG62SvYDFI8KvD7GNwW86Aqo9+OG/55I7KMStW6k5O/fcVIS3Z?=
 =?us-ascii?Q?lxo/B+S81+d5U+8EmaJ/Qn5AtT3iDx8hTriIWFJVxL1Z/PP4VvnL+gKAz88R?=
 =?us-ascii?Q?iwwsEeOQq/xORmmLtIX9nTOSoi+dpXkc91LN+6zcFK1zq/oerTBWENiQFXex?=
 =?us-ascii?Q?EdcDNbDXmNUuCj+hRfT0AO+BVNunuOYJ747SVQEO4WtW18ZXGKAQl96oDAbh?=
 =?us-ascii?Q?Lr+mvotLBkMIEwLpr0UfPDKQ9LhUNczPQvjOquendujDJJoHE0s/hEgP2bAI?=
 =?us-ascii?Q?FvjEiJoiWd8Axs+uwT/k5w3+bF9QXNeD90TJlNzDevKoMwjkeu+pVEPi3ooQ?=
 =?us-ascii?Q?U0SVsPYFH1zIA1Gwb53CxmY1Tx4vMawAoP/2eePGetfyIC3XZyPE9i7B6ua7?=
 =?us-ascii?Q?8ySHuhQPdk15FT6Y1to7rVXsEg7Zmx9XXu6rrYjkgRhXVo4SmSPgU0zb6XFm?=
 =?us-ascii?Q?4wzwC4pjcjYNa0Qh8SiIEKZAK56V5nxjX04ti8pvT7yEHRJZPo+CRpu9Trzw?=
 =?us-ascii?Q?Iw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95828759-8c80-453d-73ca-08dc2ee8b322
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2024 12:13:35.1943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1U1pEJvyLevABmhNLz2mjDn8EJLND4HsMKYNBRlIfUanP8ZGDhoFxbkTeRQAVmWYYE+K+OVl8R6ouGoYxUI93dtJvBtApKeaEEg8w22AE3c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7470
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708085628; x=1739621628;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x6Zi//yqI/qK5Y82pKa/P9W+7q3JY8+oFnVICnKgmPk=;
 b=JH2LVhqv83JSsFueZ80+hTHTrL2OGD8ae6WtgLVqSFSZSinWwuWaHjXx
 SUkNaPsODx/qIfczccB0zli7Iw1euwW94IUhMPmTT9rWazv0xvNHokB4u
 gJAD5Os2JYSPOb4OvlNgSyPtM0S7MkZlY6KoeUF7LjGpeonXgD6r3JcO/
 kgjZZ5t5jC67P4ZbXjyObGYS/YVYfImdVepQWgLwcyHDbkiWvAho1aDZo
 SR2peVI+evK7zm9LZb+c9XaQfPOt15x3NPX58iHVuOnsKoi0eHkuzMCR5
 MWfbboWD4LRoZLVQ4ozA8Ga9QpPUi0r20RlrHhuqR9oFjUnnlKWRBqHRV
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JH2LVhqv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v2 1/8] ice: remove eswitch
 changing queues algorithm
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
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 "horms@kernel.org" <horms@kernel.org>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Friday, February 2, 2024 8:29 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; Marcin Szycik <marcin.szycik@linux.intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; horms@kernel.org;
> netdev@vger.kernel.org; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [iwl-next v2 1/8] ice: remove eswitch changing
> queues algorithm
>=20
> Changing queues used by eswitch will be done through PF netdev.
> There is no need to reserve queues if the number of used queues is known.
>=20
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  6 ----
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 34 --------------------
> drivers/net/ethernet/intel/ice/ice_eswitch.h |  4 ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c   |  3 --
>  4 files changed, 47 deletions(-)
>=20

Hi Michal,

We are observing VF-VF ping issue with these new upstream patch series - "i=
ce: use less resources in switchdev".
Ping between VFs is not working when bond is used. VF to peer client is wor=
king with bonding.

However without bond, both VF-VF and VF to client is working properly.

Thanks,
Sujai B=20
