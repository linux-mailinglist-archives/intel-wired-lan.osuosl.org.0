Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81713CB94B3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 17:42:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 226CF411CF;
	Fri, 12 Dec 2025 16:42:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UYkwX6R27eW6; Fri, 12 Dec 2025 16:42:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82571411CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765557732;
	bh=HxL82MCcgC7wL2Msz0toVqnGfkX2VFLC8BYJb8P6rMU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5rrk+5F34+KVJAO4Zri2Mw0XxKDdOaKboT/IzRkz63YrkCoKOnTBPsNS61mq2IAKD
	 vdmGtcRVEN+NYBKkU6GMFIc3oIAlzwokMiyj+jzr/m91jgZBGzCwKS3/paeLFYKLWD
	 gAMzv+PEkBcvPlf0Z/0sNcvYl7kwZQLjdeVcYeUdPUGuLSi/4wP5sWINwPGn9yP8+y
	 ZLelJmYkbRmUkvKzuD9kThfzRmL6Bpv67q5f67y32MllAM4pvVFZHhQrG5Ig7KCTLj
	 LXgdrUtHroPhoNcFoIIswVGszPKG3+pOfqbNl1kF7IzlUkTqNEU3F5LLqBB3ps94Ns
	 Rt7cG+rPWeYCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82571411CD;
	Fri, 12 Dec 2025 16:42:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8819E2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 16:42:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 78BA483C99
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 16:42:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7khel9cKDz-n for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 16:42:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C9C3683CA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9C3683CA7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9C3683CA7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 16:42:07 +0000 (UTC)
X-CSE-ConnectionGUID: rCttnNECSeGRMUdcVgDWPA==
X-CSE-MsgGUID: 0xCL88SVSi68fRfuUN88tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71189978"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="71189978"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 08:42:07 -0800
X-CSE-ConnectionGUID: dVaZeYPqQ0W14ZW60JMj3g==
X-CSE-MsgGUID: NPjOhFvLQva6btvFzEAqCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197029482"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 08:42:07 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 08:42:06 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 08:42:06 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.56) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 08:42:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jv8rko6ahY08vVmJXdEZWyjI7rAEe0vhB3cueaMOd2+lnNtZc3zJsz7gp2t5oioqeeDd0jnSUN+vMyJnwLSuPtlhVGO+qNlgJE/vXM5XuRrMPMoYtC9/Gv19AD2OnrdCXvcVSZdbzlDVL0dFwYqn/CQOJGoHS/u7sUdeGC9G3ri9WsQ1bpSEczq4snBqfwehOP4sHZ59vE0PBNUlnLaKUcHqA6JLXm2jlJEj+CGXsr5Cce9fTQFQ/Fwvd1GJcI5C2RLTxkZUjtU7NFNEC2E525uEntDpFEIrpRpPzRfo32bQFpVimSpY29ChsTvoGv8DS+o4DTO0+ynbnnCkhN/ZYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HxL82MCcgC7wL2Msz0toVqnGfkX2VFLC8BYJb8P6rMU=;
 b=eu6acZohw+eKHg677Trn+0DhX3UW4+htu+lUvY41U8nZU5l0aKzxa6++PSB8Qgp5kDJEVUDPuEFXhfhThmtnOsRaJ29gzc1+/mW24sOS1u+VJA/B8aAdqMQPZxaG+NCADn5M6lIf7KqnR3o82BeosSN1K1Gctt5pHrRnMEc4GcotAyp6U2JdRWPxGLDXnFPqpPYuvB5TWl66qZdYofMEnMmbgyVG7/TU2kwjDFtSUsNUM2pUGSoCTQ9lWdZRffuZHYqJik+3IDlm+kN+dnkpXOJTpyV3ycnz1OZTy6isXCICcLotp3vufGST/fT59dRRX1PUtD3YzAruYMzS2tvC2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by PH7PR11MB8480.namprd11.prod.outlook.com (2603:10b6:510:2fe::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.12; Fri, 12 Dec
 2025 16:42:04 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 16:42:03 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Joshi, Sreedevi" <sreedevi.joshi@intel.com>, Simon Horman
 <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [PATCH iwl-net v2 2/3] idpf: Fix RSS LUT configuration on down
 interfaces
Thread-Index: AQHcYL8b6m5CZlR3+EK9emFcsAjHZLUeSppw
Date: Fri, 12 Dec 2025 16:42:03 +0000
Message-ID: <SJ1PR11MB629770A2025B5F8C0ED32B8C9BAEA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251124184750.3625097-1-sreedevi.joshi@intel.com>
 <20251124184750.3625097-3-sreedevi.joshi@intel.com>
 <aSg5pg9aLwmiVR6G@horms.kernel.org>
 <IA1PR11MB62896483A29729204B33F12989DCA@IA1PR11MB6289.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB62896483A29729204B33F12989DCA@IA1PR11MB6289.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|PH7PR11MB8480:EE_
x-ms-office365-filtering-correlation-id: 8cefb85e-6602-4eed-c2f0-08de399d615f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?HfhmxsZG8zk9GXCpz9mmHsMxNHkj9BQh2tn07piG9Keex8wOgSwp9Xo7tyVV?=
 =?us-ascii?Q?6dCuPgCU35KtD8YPGzU6YyxWjdQAtqMBexDoUZYXU32CogwaY53zCgEMXEB+?=
 =?us-ascii?Q?dFxtgVhUWgq4QdjoSsvc2qll9f91eKJNPAenPZVXzOyxcRizI//5QQTXAGwc?=
 =?us-ascii?Q?HlBIf4DqVL0MsD+WZ1wCTd5pmJvTqdpeOB80DSuo97+m4XWc7CblA/41fLIf?=
 =?us-ascii?Q?uZYQ9AUhXZDJlVD3P2n/QUpl4+mRlGnyc+G2pXxGoCUsuIJoTB+oTkQ2KsjH?=
 =?us-ascii?Q?+kIJu5YoM8JV+Fl25uP0lZhDosr8Ov+tEvi6mkniGRXNx0JcPo31JHc7sM4t?=
 =?us-ascii?Q?zE7GAxymwgNvAPJzHnh7d9mEGikhX9L+dUuusSkSbFrmWXXyCeYtN+JGg3HY?=
 =?us-ascii?Q?NhNJrt1vVTlsM+Sd+OcNLgATMse74uAZ73CHQIcroernQjjcdIZHJg8U8RRD?=
 =?us-ascii?Q?G4T5b9nz2XYo3ZpgVvqkxE8FyxdFokI6BciDFZsKl0jjLcTPMK6Qw4mHlPwV?=
 =?us-ascii?Q?43ex/keh6VtB2yyXzpySn2RhUAyTZIEDC4aTe6AUWDDaNj8x3EKZo8kF4YR9?=
 =?us-ascii?Q?aUfZ1xP64U3fMzTodTQr4akrnu9r2TGZd20ruSHMzGidj528ovVSi3t0N2XX?=
 =?us-ascii?Q?pzoQHZcVWGISPX/8hfyxjfhdTEIe64OrZveKKuwcKgeusDhqiXlKA2cLmmSc?=
 =?us-ascii?Q?EC/7sGF2SEQ0ZKo7RUI2+FzCF9kynHxLMKzYLrZOgz5HJnljvRpOP1kAZIol?=
 =?us-ascii?Q?X2+MZj0nezrC4TytHIVdIdgJG5DuEq0USDJqZF4KUXL8lGNMQeuml0kk/OrS?=
 =?us-ascii?Q?u2CjqdrNOspfr9d5Zhvn3JjsGC1TmRmxVwAPdKcBuaf5t/kIXMSLZM43u+yZ?=
 =?us-ascii?Q?6WsSAr1iJA+XuFfkdpDFCIoGOrgReS5D5gosxPIXZ37EH0HSq+h1yf35k/EE?=
 =?us-ascii?Q?vg9HpjUjIS+1lnFkMaW8VoaCuIkt4OrfwqDGGkjiivzsryfALyb7d2S1L8fC?=
 =?us-ascii?Q?woWvR4rpLR6wfIGB6sGsWMMvQZOut1JkI+AZnIhgEhBx/yHdYaCVWABr6m0d?=
 =?us-ascii?Q?LKUU26le2M9f0H/TNd6jxFMNF3DKHVLHPbqwhA2ivohvdNkL+lyR0u9Lq0im?=
 =?us-ascii?Q?AjambVi3YUS2aq/Ka9RTKGsHhPwp8hTJMC0W6O+GQ675h69TJ+b/Fk1W/pyA?=
 =?us-ascii?Q?kKlI1frc4oyU82BJN3BdPxAT3z/oRZ1dAPJsbYHuaR61iYQg9eUGLMkBk5L0?=
 =?us-ascii?Q?wvt5pFTfNUQICE+ROi3tXcE5Es/J6rHojhM1xtRVVAk7MkEAnF9NVpxD4jdh?=
 =?us-ascii?Q?vBq/8Cw01aRg8TDSfLWLUzBdyOuhXXTS/v8KTlyKhnM/R/NIFuBwYwyx9dTi?=
 =?us-ascii?Q?ixJqct0VJKJ8ESzIb/kpaR/CGs8n8mpWvthVpegjvAam+CRWvlaR9OFk2BAo?=
 =?us-ascii?Q?v3FMn0zaNT4a7xGY03l1gYCV9rXVT2wGoJruUbpD89dBcY/MrPb7iI8bl1rh?=
 =?us-ascii?Q?iUZIOtquKdkQwzlV6Lc2Qb4uN62vW5t9Hyk/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?79OIhcl2XgAoQdYFo+B3ntbVozneeUQ+8KyjhAlz65SIibciaOLGPyHirHC0?=
 =?us-ascii?Q?SCjjIoZoH1qNLZs/HS6ExbvK7nqVlcxQnYCyOcLduZTaMe4yr2Xq0habc2l5?=
 =?us-ascii?Q?2dQKK04HR1tKpZWIT8siZcnAbXfUro2ES0i35+YI/Yn3Vx+ub7UBTwr5DfjV?=
 =?us-ascii?Q?IKo3hqYtQaopp/Z47mh3PMKnqJnaHEXtlc6DozysNBUJAyNZxY9OHAPayxNo?=
 =?us-ascii?Q?ippky4Y32x36cZLMG9TS9kj8g9NtEuh8N0kBEbAsndJifAnYEsko3bSxtT5o?=
 =?us-ascii?Q?EkYMhbRnKgnweVRF72IqoqnqSCBF7ncT3KFrBAF/7RilH9Z1f3Nl10IkEKpn?=
 =?us-ascii?Q?YDx6feVATOSGGbqSFBD4Cs49mXQA6PlTPLRo78daZmDw8tDtyge9gGx/Gy36?=
 =?us-ascii?Q?/dHfWIO5MU1f+SB7RbMdYWax4Wn6qZAZAMyI8GJ4HL/6ISZBgINXiw29nYoz?=
 =?us-ascii?Q?GXH8ewDAogAzuR9dFUw0pGvn+x4Ka7nZoWuYQGRyofPYFADfRflfruYz3ZO/?=
 =?us-ascii?Q?DNhyTBjKs+WK0Rs1CxZarkIUqH517HPzI20AmRNbB61NhR8k5fAM51CgIKe6?=
 =?us-ascii?Q?FQycV6FNpQweHI/+IqdYne97zbrUdELCrwoz2MXoWb5rf2Zpu6wg3njTM0Ax?=
 =?us-ascii?Q?6rBI0n1fK/meukQeSOQteiGG+73vIRfcsBMGaOPdr3BX97+kLHzzoA2yEV3C?=
 =?us-ascii?Q?hZqoLGFSHYwpJ2qu7nuAhUh6T8SkS6E7WOpPDS6ai5YhwbzlZvqepXI5FUGp?=
 =?us-ascii?Q?DJ95VN67djcmZCZ+EtsukIm+YVgX1v/H/rF7XAFtEPJ+SiISk7ZkKNkVXwUY?=
 =?us-ascii?Q?OD+ynalsdjFtQXu8Us93OK33uhgw2yQB898oUOqxbSPZLbpCRARPfz+6j5xE?=
 =?us-ascii?Q?QtV+FS/jFmaaLk+KL/cPVZqgOb4uHHtFxI+/z1kYGE4DeHxwvGGGQgfLpHIT?=
 =?us-ascii?Q?CX2v3xUFwriLb9mrxH11Eo/fxvZ8H/iWntHe9wQTkfF4CNFJjROUskrMkd9i?=
 =?us-ascii?Q?XpykiQhyLazaLbtpSOCanhTBa7gYdsxKtR95nYImvHXahKtLBmRsvGQBA3Cn?=
 =?us-ascii?Q?1Bhpr2KYtfbBjhAmXnBcgzGKH7PrivqslYRd0KiMKN0fkR+Dqqv9Gz8GDUoO?=
 =?us-ascii?Q?KG+9jnJ28g3WZSi58kxP1HjyHmlkvtBYPMCw4MQmwGOI+orSIR2ng4nXbPuw?=
 =?us-ascii?Q?BzidCxmDanTs0W0pfF/jfkpC9FTQnVElNxCTLjrNL6Qjqu8V9OAL0zsHymgd?=
 =?us-ascii?Q?DH+8lEWNaoLRC3yPwWid09yhZk2zyCnqhZozcLDahVZizqZMbOky2iJbOOae?=
 =?us-ascii?Q?kq7X47Rq+pGj9flUBS4NsY6UT9LELQuX7U8Qs1Q0fwKK0WZ4Pw3DodhJ9y/M?=
 =?us-ascii?Q?JqVVPOdMGlJ/dHFAeK+o5OmOvIfvtPwz0A/HxqdZBDNow6ow1/xcW4cVgg4R?=
 =?us-ascii?Q?/R6kNRvYpGDPzPRJECdmdVNYscooGafZFAquemwqY1XMyVyOtPCbd7CKk79e?=
 =?us-ascii?Q?lbUdTxBF/pg2WFrHD4VGTlLDtlEQPIcplj7EnfARH+h7gAMcEz9TucoBKJoE?=
 =?us-ascii?Q?fSu9HjLVVQuhB31TCrd7Aa4hwDUPavNH9diyfgvF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cefb85e-6602-4eed-c2f0-08de399d615f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 16:42:03.9172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HjM7lrtIPjg9FXbKMoLj1ycWyaH+HGs9xdBfPqe86OU/tTpVzJh4EePrc4/qiCftPZA2KvWebLvRE5CLtPi8Yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8480
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765557728; x=1797093728;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MY7/pLObBzpzoY/vfxZLA0sKAYVZyku62mikp0ZKQEk=;
 b=L+z7F5WZLjnxW65n/fsc25AnZCiUJDziA1CUpoocRF/nFuPsDjcsNpve
 /nVvxy7qNYqvY++Uef5rkHuxvX44uYwLJZelFIB5A9SOcm3PQg9o59+Aa
 k1g6NW2eBgHat4n5ccfbE6P/h9SQtwhR21+U1ZQ4HoclRQ+xCPNw8mv2V
 /Cl707Tv8XsT6u6ya6txCaI+ZWLO9X/70YsJGb8TwuxGjEDmvDrpk/gZQ
 ff2S5L+nq2zjV6RDiRWArIQxvLUw1ws/1ZsqejEF2s+SByqeZCscFbmgl
 f2bi0BkVJnclbPGsBcL8lQN85GC724CZ4HHD+N2EVrTLKoZ8qYBFvblNz
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L+z7F5WZ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] idpf: Fix RSS LUT
 configuration on down interfaces
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
> Joshi, Sreedevi
> Sent: Friday, November 28, 2025 3:31 PM
> To: Simon Horman <horms@kernel.org>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Loktionov,
> Aleksandr <aleksandr.loktionov@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Tantilov, Emil S <emil.s.tantilov@intel.co=
m>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] idpf: Fix RSS LUT
> configuration on down interfaces
>=20
> > -----Original Message-----
> > From: Simon Horman <horms@kernel.org>
> > Sent: Thursday, November 27, 2025 6:45 AM
> > To: Joshi, Sreedevi <sreedevi.joshi@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> > Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Samudrala,
> > Sridhar <sridhar.samudrala@intel.com>; Tantilov, Emil S
> > <emil.s.tantilov@intel.com>
> > Subject: Re: [PATCH iwl-net v2 2/3] idpf: Fix RSS LUT configuration on
> > down interfaces
> >
> > On Mon, Nov 24, 2025 at 12:47:49PM -0600, Sreedevi Joshi wrote:
> > > RSS LUT provisioning and queries on a down interface currently
> > > return silently without effect. Users should be able to configure
> > > RSS settings even when the interface is down.
> > >
> > > Fix by maintaining RSS configuration changes in the driver's soft
> > > copy and deferring HW programming until the interface comes up.
> > >
> > > Fixes: 02cbfba1add5 ("idpf: add ethtool callbacks")
> > > Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> > > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > > Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> > > Reviewed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 17
> > > +++++++++++------
> > >  1 file changed, 11 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> > > b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> >
> > ...
> >
> > > @@ -424,7 +429,7 @@ static int idpf_get_rxfh(struct net_device
> > > *netdev,
> > >
> > >  	if (rxfh->indir) {
> > >  		for (i =3D 0; i < rss_data->rss_lut_size; i++)
> > > -			rxfh->indir[i] =3D rss_data->rss_lut[i];
> > > +			rxfh->indir[i] =3D rxhash_ena ? rss_data->rss_lut[i] : 0;
> >
> > Hi,
> >
> > I feel that I am missing something here.
> > But I would have expected rxfh->indir to be populated by
> > rss_data->rss_lut regardless of the port is up or down. IOW, I'm
> > unclear on why
> > 0 is reported for the indirection table if the interface is down.
> >
> Interface being up/down does not affect filling out the rxfh->indir[]. Us=
er will
> be able to setup the indirection table even when interface is down and qu=
ery
> the table as well (changes are cached in driver's copy and setup in HW wh=
en
> interface is brought up).  However, when the rxhash is disabled on the
> interface, the indirection table has no effect, and it is programmed with=
 zeros
> in the HW and returning all zeros in rxfh->indir[] here reflects that sta=
te.
> Thanks for your review, Simon!
> Regards,
> Sreedevi
> > >  	}
> > >
> > >  unlock_mutex:
> >
> > ...

Tested-by: Samuel Salin <Samuel.salin@intel.com>
