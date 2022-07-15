Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF6D575E64
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Jul 2022 11:22:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61D6342865;
	Fri, 15 Jul 2022 09:22:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61D6342865
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657876935;
	bh=7SUHUNP/tWDWlSEk1Y3W7AIHUZVXu32I4i9h3JyOjIc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TRTMoJVj7OxYF/Xn8cTn6LBGjOe2q1xiWKKUBnmAMoBArjEO74jm1a18wx+2NFsbf
	 LJyho+l4GFO6Tvoczvf5Z40n8PksrYd9MDvhxoz8epz/gl17s5D8fWioUCJ8N7Zf4v
	 iBWI7l0aSc34yIfG0q6Kj3CDtc186UyCjBr7YV04TgNMB2ZWDqRVObI70ZtwWhlwV3
	 YpNQlF6ffds/SaKVYSncT9Wc5vxkLdEbJGfEoAA2P6luu3CO3RBsj3EFm3SSzSfQuV
	 wVvKbsAHhGEqCv/iMsyHCdeiamxr/+3smvrLfSC4gOjQXPWhhQGZ13KwXca9VCqGlZ
	 vAsTuSG9Hm1NA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tuPAfIHjLUm8; Fri, 15 Jul 2022 09:22:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 054DA4285F;
	Fri, 15 Jul 2022 09:22:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 054DA4285F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 79C1B1BF25F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 09:22:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E874405DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 09:22:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E874405DC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tq5YGGW66zkT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Jul 2022 09:22:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92850401ED
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 92850401ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 09:22:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="285771096"
X-IronPort-AV: E=Sophos;i="5.92,273,1650956400"; d="scan'208";a="285771096"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 02:21:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,273,1650956400"; d="scan'208";a="623789203"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 15 Jul 2022 02:21:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Jul 2022 02:21:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Jul 2022 02:21:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 15 Jul 2022 02:21:51 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 15 Jul 2022 02:21:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UCJwmbVBf7PVD62xgZTruxnzGBZDTGFQDN+QHcVeDkyRbRM2vdw0Wd7U485ObLBBMvV3XwCO3FXkMTBUbi/p5v4JPaEYEwku6ONPC/mKSqXUj5th2hJ2vdhNvMTgnxhdpaZpgalgNFGb1DAK1d2wVKr/H8deQGByxq11bUXl45r1Jf2DKj7cAZ3aSFjmht6eBW6IY68N4SSi9Bk8HUX0kmefhVGCwT6JUd4O/i4cncpCQEoEW0NF8RU89gUJd6UX8jo7v9hhNqr4rzS5WvQnSqOo4GrJJrRpMrlYNy16iIEZqwc/EjvDr82/yD5WeUmwbO1BzdPKSEI81VDVTiODkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W3q98cvBnK7QXkmJG+l1jxMYbqX2+hizrlI37TDY9lI=;
 b=LGsUxisBX00TsKusy3X6KDnR7HB7S67f+KOiSEKzETq2YpkGGzUULxVrT0C4GDyDF/Tlvf5K4epBhbzici5+MBKf9vVpPqqeZdEnMCn+P2ZGp22OSMrfu/gPWuxULLffe+3VHXW7vVB/GCM83+uyDZ6BYywHR+cbS8ST1yju6O2G/eAqbMUG912rP9lXUXvI2uk0OYP8SylnNUeqCwx4Ye3QR7d7MHiYQyUCHs/dq8lrrPUvPs9fM2qJ+FjwCj11j4lT3sYM4rkrQo2T52DtCbAPhiSACiaSx7FPLH380y8b2nRZOCnvxNZGZTWlbrkK7fpbU+2x7Cowb21BJpLlvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by CH2PR11MB4200.namprd11.prod.outlook.com (2603:10b6:610:3d::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.25; Fri, 15 Jul
 2022 09:21:46 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5417.026; Fri, 15 Jul
 2022 09:21:46 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] ice: Fix max VLANs available
 for VF
Thread-Index: AQHYj6yDZqcGGNSLr02jnOhyGU1+Za1/ONYA
Date: Fri, 15 Jul 2022 09:21:45 +0000
Message-ID: <CY4PR11MB162451AB669789239D136EE8E68B9@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220704134612.1362297-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220704134612.1362297-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2fcab20d-a0c6-4c26-0448-08da6643705d
x-ms-traffictypediagnostic: CH2PR11MB4200:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: evGc/D9Mg+wWPrqI4Tmc3APJju2N84tjRh59gAxLpazWBEeW4y7w6BtPngH9gjKKK6xgTgJ9ArFppOTvVUAtR2NleZPWZmbZ0eG2Y4lVt7kmLvfsPiSike42UJdwWep9LQ7mrXP+e9EgkWTa1YQmdAIxExXFSAHizmARL19AQ46q9/32QN1q6Hv4s0RLFfX6HrGmKspW+s8RbxQmnqcKd5ZqCb18PWzcOk6u8QC3GANvakvV6v2rfM2DVcBzGUmHqngUrM64K0w3utx05uquiAyPM4XKph6POXOxIjxrGHf12yzRp0p38e6wpJIj/wgyRRQnTsR/vnvph+cqv15ZkRV9cjI6Q7t3+446seS12we9h8qWXclz/npokuRFe6+faOVzjHqeBAvbRSfDhns4Zk6N+3BQIktpjmm8kNhz29r5matrcaKO+0/qekRLXM50RNtNNI8QQfglkDigMPjx4Ge0nIK7PMDIs2le5bC3BS7miRLU2eVLMk7XwJmIn1mXrf1zeg1dq8WyIWoAbozWiZA5pdOQCN82i4JjXBY0pFhTDOfF+8Ux4maQbbkH8NhY1+gXo2gxqm2IqQpH0QaR5R0DFyWQXOCeWvxb7f9J73PAwaPa34RSMLJco583MTDFc5EEWuiVGzsTtJjuPkmmas9rWJz7GXoRZ7iLJIgxUkkr7aQLTV6hw0bwag2lZT6I+yplHV9h2SZBGM87AxWpO7mgpLe6CChITE+hnCry1zsDhQAmDqn0E+ZgQPnRpF/AAvZgUjygolfqdtOodhYdADQnnqfnP9pCgvfmBN2UquQyJZB4YFzEAL/gpVeXa4h//9JtbIwDWru8JrrVPROG/Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(396003)(366004)(346002)(39860400002)(8936002)(52536014)(107886003)(122000001)(55016003)(38100700002)(66446008)(5660300002)(316002)(33656002)(83380400001)(66946007)(4326008)(53546011)(86362001)(6506007)(7696005)(76116006)(71200400001)(9686003)(66556008)(82960400001)(38070700005)(8676002)(64756008)(41300700001)(26005)(66574015)(478600001)(186003)(66476007)(110136005)(2906002)(131093003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?2KoUdLAbqn6muZpziGQbBLSCI1MMQIL0wn1N+/QID9Rxvff83YILiPFq6m?=
 =?iso-8859-2?Q?GGCmwrjBLgs/SC+lJOtz74y3qNomB6AO7sED8kqR4IDIN7myuMTiFdyZz1?=
 =?iso-8859-2?Q?NUAPJUJTBt/m2KIljCsogW8rSp90mjoeRCly/3IRcxU+S8qQX1OIJ7NyIN?=
 =?iso-8859-2?Q?t4Q3ak2LMhSmdni8Cj4C6ujRxbHpOYtMOYdyavU4E8e32BDwcec0xDIJOU?=
 =?iso-8859-2?Q?mtFAL8MfD1j85wb58sNB7PPXkZO2JqaQiyEgJ0gddaOBrCSkW9aS4teBM8?=
 =?iso-8859-2?Q?LEw4OO6I+8K5xNvPyUqphYeFAqOkCVsuqY+GEMtULoWrLSkcU5vJWY8dHE?=
 =?iso-8859-2?Q?mZC9OjGRL6GuiCppyj4j/bkp83M8pv5Ep/0su1NU8CLwcVJrc++D5Nu1tr?=
 =?iso-8859-2?Q?l1w6+slcYpe8VRi26RkXzVsjlG0gbp8yIRA/Y/lGGrdLnWLSF8VauiLTyd?=
 =?iso-8859-2?Q?ScDSJ0Lmh83yLOY5M3WdwtZxlvJIy3qSY20gqVFApchftUnuvUOBMyszSs?=
 =?iso-8859-2?Q?WzOX7anPgSsR7Cw/WYLFsHDd2GJHlAII/mQ1Zr3+cvq7xRinTvKX7SXnjm?=
 =?iso-8859-2?Q?AP4BSA14Kzo/4lI+Kay3SS/A3hiR60d946r/1RFOh9P7P84abEuKGJqnxZ?=
 =?iso-8859-2?Q?mQokLdGcgoR5+jCgI59tMsGnYLyY55vJuEfwYYh5DqScZQ9tZlj/SrI9zB?=
 =?iso-8859-2?Q?AjwQ+V3NyJoLdLuK1dJ4dSnl5sH5oXrDYh8GpPz9UyojZ3HL65DkfRuzqe?=
 =?iso-8859-2?Q?XirPXhIJmZZzvVbeBHaDeJ9duYhQEYtfbJTpbEigknzwtlscbo/ATeBAY+?=
 =?iso-8859-2?Q?O6uGGPXd7+7lSRjfg9uqFhD7v5osyFkxqoNHbpW1FShfbxNMq7uOfyAm82?=
 =?iso-8859-2?Q?8T7W8iCyiDOzx707foEtnWJnnYTQUW4IRbyRd9ToY+rZiWNEDZ3aQFcpLr?=
 =?iso-8859-2?Q?J6xcvvFXwKs8pLXqGku974DYpsMcMbSRm8O4RWg/LQKlwrrcF7ycNZab+e?=
 =?iso-8859-2?Q?Xu8XQQbUIuZnPaEAinskEV2aud3rZZkvDGVBt+ZD7MsFoVPndsMNAtc5wt?=
 =?iso-8859-2?Q?ZX/9gNdZZ2BDScBEyF9Wnq3tfG5+a86CjCl+Q8WToP2PMfVPgZkNPlADx9?=
 =?iso-8859-2?Q?dFEdZnzZie0t9W5yRa9mabzjAjaqDChOYjIyzpVOz1+UChX39I/rcH3vN3?=
 =?iso-8859-2?Q?pqwIASzcMoi6oy7tLBgtKUv0WnryPUqTQGYhTr7l3ehE0GRrrzDjzOc/GT?=
 =?iso-8859-2?Q?qs5kolYDHwp+DQHVlHU5X83c+iEJga7zzkjyl+NEpsze7DSRp5BNZvvJW3?=
 =?iso-8859-2?Q?1Jgi7303SzDKibGCf5ImFHoC+EsfDtSarilcruYjoe6QEj8TDML9gmo9kW?=
 =?iso-8859-2?Q?kCMFHZzoBDwnl2n7IaIirnOFe8TQuBolpS/BKebRBn08MGL1SuvRrI0RWd?=
 =?iso-8859-2?Q?Z7OZZenxwhVs554QQA8kblWIb1b9wR1PQ8Q8Yk6/RbgRX371jHP/rP/lJ+?=
 =?iso-8859-2?Q?nnQf5J2q+gZRDfofviS/WgguQOnoezC8Uk0Uzdc+Gbwog/xghWapRm1qN8?=
 =?iso-8859-2?Q?1dLACRMNQV1PvMH5+RUvhTelKMgaS4ILQpC+RzmatgqTmHSi2+jjKOFTc3?=
 =?iso-8859-2?Q?p0xbsXI0CQ6ZimewYEoiItVYVuKPzMEr7L?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fcab20d-a0c6-4c26-0448-08da6643705d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2022 09:21:45.9707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: puA2YsL9fj/JTRKVo3F5fkaLBqdb7wZg6enoeqVFz5NmiqUj+AtFTSbD7sFwhqHuqrxbQu2+MDR/iKWjtYdNJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4200
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657876927; x=1689412927;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=64snrUm0Y7Uue1u+GUTWsOt5hmlqdDJ+K/Cb+Irk+/0=;
 b=QzfQcG0+BMqVcntWXV+TMV6/PT8hJXbeZhP7YVhHdLLW6rm3K22bm0cf
 qzPqfd5mh7d29g1SAqFN/4OhOR0KtF+r3GqECNtYLYAixqF52gbgb5vIF
 cVlCAFfE5PcnD6zYpLjDDTpPIQEdus58l4uwEnZoYA6KPI5LPXAM07re/
 s8wgYm8ZyJke5xhoManV7yYIlLLKmm5q0o2o+Me6mP0VW4S6o0BRcl8/s
 7zl9GQTVkwH6QrY4IAoRwgVbmXe9YEaLLHwh8dEKsoaCKI5G+YkIhsMyw
 m1npNB63hzi1FaH9QzVEg20UNCES6LPKr7e3LPkWW5AKtzMJsn0ZTWw9T
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QzfQcG0+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: Fix max VLANs available
 for VF
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Mat=
eusz Palczewski
Sent: poniedzia=B3ek, 4 lipca 2022 15:46
To: intel-wired-lan@lists.osuosl.org
Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
Subject: [Intel-wired-lan] [PATCH net v3] ice: Fix max VLANs available for =
VF

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

Legacy VLAN implementation allows for untrusted VF to have 8 VLAN filters, =
not counting VLAN 0 filters. Current VLAN_V2 implementation lowers availabl=
e filters for VF, by counting in  VLAN 0 filter for both TPIDs.
Fix this by counting only non zero VLAN filters.
Without this patch, untrusted VF would not be able to access 8 VLAN filters.

Fixes: cc71de8fa133 ("ice: Add support for VIRTCHNL_VF_OFFLOAD_VLAN_V2")
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 v3: Fixed git settings and commit author
 v2: Changed fixes tag
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/et=
hernet/intel/ice/ice_virtchnl.c
index 4547bc1f7cee..24188ec594d5 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
