Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D775903188
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 07:47:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30329820AF;
	Tue, 11 Jun 2024 05:47:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5eghsFVPGCvt; Tue, 11 Jun 2024 05:47:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61AA9820B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718084864;
	bh=P2z7Ao5stlLgoGWndxSZw0ogbW7ZqldlKeVhRwL/jsc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6qr3fmPhMUT6vLU6aoY1+Kk5SdljN/9iHcqF0m1ThCGtd/7SjL2/r9BPXk7oYvqlH
	 +hlKaX1yMS5mo+bJGRrQsOBAfmtsiiv8B/Q1tKvma5kD1BANcF0lM1hKVFEhs2dEOa
	 fOCVZ4UQanSI1eNfFi18b4VlgstQ9cS6niPAcjDr+YdCdouk2ELafdWcA/uOLoEExc
	 zEDm+4FcNK0hyrwGGzu2Ygw9H8BiHcL6GnKs86ntGmDFSJw3XSc2p1TrbRG9MDD8Vh
	 ubW1tcaAJTIDnn/4uCghAnoZd+SiO1+rRIhmLnggEn2lYTE+gx5L4ChJ6JVP2vzZP3
	 WtMk4Gk4RKMxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61AA9820B2;
	Tue, 11 Jun 2024 05:47:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8B8FF1BF39F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 05:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 75848405A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 05:47:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BNebHqU5gjqB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 05:47:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2171340569
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2171340569
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2171340569
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 05:47:40 +0000 (UTC)
X-CSE-ConnectionGUID: U/KnFyBURrueNytI7TNYsQ==
X-CSE-MsgGUID: YDwgKnq7SWCgboP4v/8HLg==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18602971"
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="18602971"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 22:47:40 -0700
X-CSE-ConnectionGUID: s5T5MCyZQ7axvuPaDqC8XA==
X-CSE-MsgGUID: LbKTqgQ6TpK0a6A0cXWcrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,229,1712646000"; d="scan'208";a="39881817"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 22:47:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 22:47:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 22:47:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 22:47:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m8Dqj8HQG4ZoQQcKYJ8S7Bok8OnWITPyXFBYTmnvZP82nMFOAkuCnUJdifFUrwaVxLo4nZx4eHGuO011eyntINTMEfMGsk3KF4hpHI7vAXkfN+UD10bJR6nJR/pq5j3vHvO42lGBAnRtiIotokwoNckkDFZv9aHQ2+lzTQGP7UmIp00OGlWEPW12El8nWdvK2ZQbNJBRWbKv/bpc/9NitZWSg5IMBUTFpaj0NYfc75HB1U/dRSqm5tAQr75fLAL07fvjqRWrBzfHwg1lVQ6+nwb6pPKhQ4pQOIXHXQvfLULge1Cj2ueQvx6HNRRNqlfpPQqYXnCsbaLAAEuLzoIeQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P2z7Ao5stlLgoGWndxSZw0ogbW7ZqldlKeVhRwL/jsc=;
 b=MGORFuuaPd/aaPYMxWOEuCLj4B/nLwMoBM4dOlsJZouSgDi1A7wSaDOMylV8NJjM17CXM8vBQ5t74WoqfKVJhha8okoHqa2vHs2kcMCaWLBP5BN5uJkf9Zrvw8nYQLwHhuB0ekGXtOGZIzWGNKZVSsWJ+r0Mn2jcMK63MoNyZvTVFcLGTz2q6TM9iO5dcfXlcoplJzsHUIGcEH1PdXoCJolFgnWRd6atnZECQOoGVCm5bsnZmS3eQcsYP/ifGoZ77nIocJDINiSH85ZPZcqRN2FqUHXrR83398sD0cFzXui4xDTT+rMla8hKy+XTeKjnHqEtQmTaA20B1M6COXwP6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DS7PR11MB7783.namprd11.prod.outlook.com (2603:10b6:8:e1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Tue, 11 Jun
 2024 05:47:36 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 05:47:35 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ice: Allow different FW
 API versions based on MAC type
Thread-Index: AQHauBmnkW56Bz1XFE2rYMT/1o+smrHCFS/w
Date: Tue, 11 Jun 2024 05:47:35 +0000
Message-ID: <CYYPR11MB84291B059318EA9DE82C0006BDC72@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240606134846.3898837-1-paul.greenwalt@intel.com>
In-Reply-To: <20240606134846.3898837-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DS7PR11MB7783:EE_
x-ms-office365-filtering-correlation-id: 59de6a7f-6d6f-4583-ac86-08dc89d9feea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?ORuUrwUxKlPBqkb6KLFNFZfq3y7rFFr0+sVFaxzryndcxNxMmzpmb4c0hQnM?=
 =?us-ascii?Q?BkklQQpaACQx27kpNf9ekCzQvaAf48EyY8S/hn4KrNqWbYAdGsdhNrtLguSh?=
 =?us-ascii?Q?r8WMLLjyoWuyP2f0bbb+2zExcUO2xi594esGJdw1WrxyshuZfGm6Vp6uskWI?=
 =?us-ascii?Q?AausVHNJaVnSO68/0q2p+o3aKvityYIXidfw/qit7wTpnth2hAMnomWKNpZc?=
 =?us-ascii?Q?PfWxSI3K1EZBAkmzcPt6ptH4ax7e9YHLRfPTWCAyTQUUlWnBRUuVtsiIULIJ?=
 =?us-ascii?Q?tFOGCr8ypeLSafgODjXoMQGdXs0vfRk8nqWsIltaQxOa0KTjkm7S+eRdJ1rz?=
 =?us-ascii?Q?BvPpHJkJ6MzV7h1bexkmjf2Jg0tuPEe56LB4L+M2j3gOlbLe6fl2waM1jOCG?=
 =?us-ascii?Q?gQQteUDH1zeKkWS6lXmanI8CbRXWCC/Ei0IGWdz5mTbdJ5RuTw1IiqhUk7Da?=
 =?us-ascii?Q?MWXSYUy0jArZbG150xTFS/8B03vLW4HethcLohausyDmk3hEBnupUyZpZRf0?=
 =?us-ascii?Q?VeTzMyuJ+kV2u4TXtVWrUwQqFu9n1ZJzZB1fWs3EZqDh8jUKAn01Dc+UAETx?=
 =?us-ascii?Q?MoUJPyI8q5NgTMc2rblQO8Zg6+dEIwDBY7FYj8y1DoE/SYFOjkuWyT3DzFOn?=
 =?us-ascii?Q?Vr63gmxKH36khGigr7iJwB2OKznutk/yDUpqhOH7NkSyqVrk5I+YWaXU7ip6?=
 =?us-ascii?Q?qxo9sOtfifk8mmDlqy/vt2OwU1i0a1b9JHoyUNzjJEhxvEZJ3XA/zNDtaeCF?=
 =?us-ascii?Q?MQfyLlBG/rEPSlGRtgqdomqF5vh6qnW3tqL1KB4U6AE1Z4n2b3/U0HJAJHME?=
 =?us-ascii?Q?dlhl8fvewTX2cSsJtSzp0xFHYYZ2p1uAfOa34oGnVrSGGhndyUXlh+hMIFYP?=
 =?us-ascii?Q?oQUZATVbIXrvFBi+xRMcnw+D3EIDFH3RQpdq0LrScZAZoLihFO2cF23ZX772?=
 =?us-ascii?Q?SO1yxx4gaxx0Ro016BVBWoqEPa84p5uDMdQwyXOaPxLHvGivURyaYlkkYiF1?=
 =?us-ascii?Q?XiPwQhuC2NXhuLx+o5YcJSM2J59nWRaotU4A9k9ULs/JofS7c3YqKSaSu3sf?=
 =?us-ascii?Q?1Jz9fED9an7u3Nxy3UXdc6f3Fp6lSDl9CFdwd/MwKIz824R1uA53XlddDnev?=
 =?us-ascii?Q?qDp2Zw6NI6lDySN+BvWuec2OVcjUmIZNRTtW4puYUMOZRjextqWSv6hPpBc/?=
 =?us-ascii?Q?ANRbc9tJN55ImqgsKi9PkNZGazwZubyEtCJxQFQoMXzK8h+JxT6idoL31o39?=
 =?us-ascii?Q?04nEAd0rHXs9UQnlEplZyQ8+I4E+v7M771G0gdlkcFI6nIooJ44U6u+MHeW2?=
 =?us-ascii?Q?Q9L9uNoZAJt9lW1ZygGKRspKIw16EtcgS5DLHhjED6wKecwGiwM1zlifTDml?=
 =?us-ascii?Q?fboqw1E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iO7Yrs0Hf/hZHllubTOOaKdyikZtF6u9BZZeUwmOFR9NjF8QMNW+IZnHX84b?=
 =?us-ascii?Q?w0ulR2icUEb9TsauNtxbMF9kN1LIfK9ppVLJ8cEZQkGPRIT+/jLY5Rpf5j4o?=
 =?us-ascii?Q?oUPtUknlcSffeyao21AiLC0bhAHUOdwC6YTreObicerqkFJyW+1cS36LQAvM?=
 =?us-ascii?Q?vQSiWutNaX9FKQDWgfIj9HojbVSxnpRZMb1LuZTiWdLpkjdXfoXcGi4Wt2rz?=
 =?us-ascii?Q?bJXkvz3jrLgLflUzBfbTg6nhrHE4KcDEQjPNiHH2mM5G12i1zm7bWh2PfMHo?=
 =?us-ascii?Q?IiT7p0RgMWX6O4SLWGVf+0jBhiOaqmq2jnd8lCjZrIncrdBfwM/ntdJL8sBs?=
 =?us-ascii?Q?b7WFHup4vou6X8kNc7UgsrOUW5NkVY/sQoOCJyCknUvw+WPTrK9XHUwBmZ1l?=
 =?us-ascii?Q?Ppdp0K+oOFyFrbMfE0SAXIGzhzFGMbkTjlH96m4pkvlJnem1lzLAMu0aEjNS?=
 =?us-ascii?Q?regbGq/HCZvgH6lcQit/h/GrFrQ+MIil/YZUX9rQIrXrEbR6xh57J6GZI5OY?=
 =?us-ascii?Q?DQTG8JBOiLI9kfzHf9t3eELm7dv+0Chpsr893uwp+Mt8RbtcvoLTo23832dU?=
 =?us-ascii?Q?MnnqRlK3D1VbdrbX1025I65Xa4rjV7Y9qKQTTO02xc+llehX4BhJ2U2mJM5W?=
 =?us-ascii?Q?xF9j7iTJbra93R06eR0DNk/PmH7m43RQRqmEQ7myQjx15Edmk26xAh4AkY/H?=
 =?us-ascii?Q?rS+LHwm77h7MMpolAEL2aOlDtGHCgX2US1VMk4KIJ9r1OLkTdMxb9Rqd4bpO?=
 =?us-ascii?Q?FRHKmfrRhalCbJhf7VGcV98SB2dFBEh+YusMYD2rCcipIrL0UwNllC0N7RS4?=
 =?us-ascii?Q?3C70XsBtXTJG+FzKKYJwJta8jz9N8V6x0x4cMycxLOVmPqO/2oJ5TKI9TrZo?=
 =?us-ascii?Q?neSgMmaYHXIWeT0raWUkcUw4I8QBCA2xWdZwXPb/vyB3PQrCPfJCgl7gWxBZ?=
 =?us-ascii?Q?+V14hBvApN9uVJ5J+0clK750BL0FfvZuW069nfJjLBJaMljbpBvwrrQRRMfW?=
 =?us-ascii?Q?Aqxs5nK969fPORcwPrYHa5rr4RvqOfl5WmkHnSAAYFm2yYqeK3VSdm/G3wJa?=
 =?us-ascii?Q?sI6M1E5tcMRWKtdXUXipAuD2zj0ZdimiGf4bSbPEwNO6JSjGe7293w2WtfhC?=
 =?us-ascii?Q?f+IAs6ND69EXut3+mh4/1ieMCJoVppFTMIFCkGNYijYNvIZaP1k2zXjeua7V?=
 =?us-ascii?Q?UJEpWkmaQY8cXoqPcc29Eqz7efzCZ/lCYLhjTL/nZFYBfCUfCpr9SsnDeGso?=
 =?us-ascii?Q?rS/pBC0Y9oOyPiekO46dJoRqiiXrxFaQxhWlOVgB4BlrfpU2anO8xkoFrO/y?=
 =?us-ascii?Q?0Gkr97dWBmfpJJniSCPvqlD7tiTUfu9+XosI4aLf8D8h0SaVjHJNHmzsm6v4?=
 =?us-ascii?Q?zxYopZr6DSpqaf4/wHuGYNSjRG67+6sHkg3U+sy7PXD1hCI2kTIV+j+1sT6N?=
 =?us-ascii?Q?5shBxGSU2SRerKme2gnPh68mMzNUOSdH9aweKb+SvD8cDFQwCwB7FYEBG965?=
 =?us-ascii?Q?nwxQgIpB59zmLstlXZBexnUJyz9ujbAb/rSo2OsHXFnjghDSjMPnMRaOqSrp?=
 =?us-ascii?Q?sxrCV3wK77uRC4VFzSMmvgr260ZpR3ZVWG7S4amKNto1hZXSM0fSX9zaX5aN?=
 =?us-ascii?Q?hQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59de6a7f-6d6f-4583-ac86-08dc89d9feea
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2024 05:47:35.7164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HpfqokpOof2LXAk0P7SSnPKTD8FDupWTfEnsgQ2staavnlK1c6FP/s2t55dmRFxYnIbsvjkv3xsEhqNnM8VGY/9CIIjb0wz45Csk7+EmqrVQ4h51Fs2l1spAyxNa//6o
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7783
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718084862; x=1749620862;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OFBc98oYeVo6SO8vHeeLjTdzF49SoOZjLv/YX2EIEAc=;
 b=jlUmGMcnXgnv9mj8qnQMQJngr+j1vFSK0LrK/Pcxz9HdT2w5al23/A85
 pmtm0WMMW5sc+UezwHyzqnsdmAUU9fkcqhtGeoZapM4QcK1Ji5JUgOWYQ
 6D2KhkjdPvmPhpo+ljDqulMTZ5f6x7FQTmlfq7bnetpFxOy/jigqxvnRD
 6M3hnN9Imr0Ibk27/P6yDrVcVKYLhsuaYRqBTaHK/i28UY5Kgd7lCTLBg
 qlGJB1KcvWakTZezODLRms+OTqX9ad8SW25zpNpg88uEhQPTJ0vqFMLc1
 +YWfKe7o8MC16mIWwylEv8vP8a6Pz/bOc/qemClYwURkdi4qxb9w1mjvB
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jlUmGMcn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ice: Allow different FW
 API versions based on MAC type
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
Cc: "Greenwalt, Paul" <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
aul Greenwalt
> Sent: Thursday, June 6, 2024 7:19 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Greenwalt, Paul <paul.greenwalt@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: Allow different FW AP=
I versions based on MAC type
>
> Allow the driver to be compatible with different FW API versions based on=
 the device's MAC type. Currently, E810 is only compatible with one FW API =
version. Now the driver can be compatible with different FW API versions fo=
r both E810 and E830. For example, E810 FW API version is
> 1.5.0 and E830 is 1.7.0.
>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 11 ++++++----  drivers/n=
et/ethernet/intel/ice/ice_controlq.h | 20 ++++++++++++++++---
>  2 files changed, 24 insertions(+), 7 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

