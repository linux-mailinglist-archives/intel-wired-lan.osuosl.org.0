Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F24AAEE716
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Jun 2025 20:59:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E81F641173;
	Mon, 30 Jun 2025 18:59:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9E4kDyowlAuI; Mon, 30 Jun 2025 18:59:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C82C41246
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751309993;
	bh=yD+suPbXU14fufTqe6XKC+FEdIto51xJlOnLqr04QYE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x/QOfdxfBz61vL8+wPXACV82p4nN2kngyDk2jERcGGaAYQdDKbbmxB067vth+Vgt/
	 CEN8UMlAbM4AECVA6itEt8Ahh1KNIP+woNueLZdWrmc7pjr3+9zMtRxIvgq0mHWtu5
	 eABRlnC+0xAm8ZOpaupv4y0jnfIKV/j6BY/grc8ha42ldhgAljUXdgr4ofjeaWNA2P
	 aGoXrnigchpllSiAUr0zotvIRYeQpZ3BL8JQAolmnNPYZun+GStvj+zvoaei5Ak+vV
	 YjLO/YeNe+T94Ttlv0fg4/OKyTULZ5aMogaZcNztBGUUse3oN2ZEa+wJf4hTVAKyCE
	 5q6jCYigfj8Ew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C82C41246;
	Mon, 30 Jun 2025 18:59:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C4F951C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 18:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B5B8480B32
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 18:59:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rHYCjucpFs5t for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jun 2025 18:59:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E639684873
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E639684873
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E639684873
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jun 2025 18:59:50 +0000 (UTC)
X-CSE-ConnectionGUID: KXVVO1zOTtirzQuw+gy1dA==
X-CSE-MsgGUID: fKtE9b7eQJK5SJ2x5UZrvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11480"; a="63804182"
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="63804182"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 11:59:51 -0700
X-CSE-ConnectionGUID: D3UGC8uHSyCfKL5/IOGZ8g==
X-CSE-MsgGUID: V3xnUWZuS86oDkFqKGjQQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,278,1744095600"; 
 d="asc'?scan'208";a="157589993"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 11:59:49 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 11:59:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 30 Jun 2025 11:59:49 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.42)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 11:59:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X3MFZPbNw60AgYXLL7yqUEZseTd8LbY7OvaPS6XQ1Bnf1qr9Z6znC3XObIHOfDDTSPJ4eXS5hV5ryvk0WcoMB3Dy5JIt4fLIV+h+fsd1U0/1LyHcnMevWUIYIC3s5VJPJWiNF0ZdvEr9NT0aj2p3QPFnpfjr2CrZMUV4z/KrYqdFlxAq0kaMpeQBMohp7k59CpQrm0AcM4RATr4NeHKBievAmtvOUyodO29nYBYqfMsNCMf2qkyDcsdxbhr4Mk0AKjZ7KHIOnz3fisKiJVCibYMQLaHW+JXXU7RT/GtMWjg30IeY9KhftQzf0U1bMp+ffRx7fJQh/vykQaY4XuzMTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yD+suPbXU14fufTqe6XKC+FEdIto51xJlOnLqr04QYE=;
 b=I/PpA4Xh1mA9pR7ZLE3PGoUP1qgs/t/nLt9GrARc4fxF0EpAIoW0+DXr3DjkNZbTOtMq4XTfsgCsA0BblCop/cg1w1s1L3SpKIG5W0zc5A6luDf8PtFi6InheJGnjqVrBHb9laxraVF/gIhZJ1aBpaGqyI094poQiwcaKgX5SBFeOO+lFg3AZRf0WltXPzwxI2kOBKpiBDOXVV15/DNzlam2lJSnFKh0jxSLVtYI/772HxFlTQ4iDWTUQMVBrkHEUtgrgKix1BUyZPm0qxoZj9SEVXvwwPxzLDEU74XlRXUjmbVwIBQ1L25aWZiT7F3LtZ+qBH03u+SwKdTe4R0yEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SN7PR11MB8044.namprd11.prod.outlook.com (2603:10b6:806:2ef::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.31; Mon, 30 Jun
 2025 18:59:18 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8880.029; Mon, 30 Jun 2025
 18:59:18 +0000
Message-ID: <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
Date: Mon, 30 Jun 2025 11:59:16 -0700
User-Agent: Mozilla Thunderbird
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>
CC: Jakub Kicinski <kuba@kernel.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>, "Dumazet, Eric" <edumazet@google.com>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, Martin Karsten <mkarsten@uwaterloo.ca>, "Igor
 Raits" <igor@gooddata.com>, Daniel Secik <daniel.secik@gooddata.com>, "Zdenek
 Pesek" <zdenek.pesek@gooddata.com>
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4KyuwbtZykk4GHttMQUWAw1X"
X-ClientProxiedBy: MW4P223CA0008.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::13) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SN7PR11MB8044:EE_
X-MS-Office365-Filtering-Correlation-Id: 41999f4b-fee4-40fa-f172-08ddb80836cd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ajdlSzl2dnh2UzZlZWdXK0hyVENEVDhkR09zT3BwMXpYN25hT0hqd0FpcXlR?=
 =?utf-8?B?MWlzSjJCYjVIMU9hVnVlS1NJVVlTZUg0WEtLb2FJblZWNWg0QUhPZ1FzdHpC?=
 =?utf-8?B?YlViaUw0akE0ME9KN0RmSEZ2QWE1TFVhR2ZvLy83MTZISE5ZcmZyQ1pIZlBL?=
 =?utf-8?B?UGhFVHcwb1NoRDM4eUtrdEFHTW1nUU14a1c3LzJFVzdLZi9JQy82SzlnbnlW?=
 =?utf-8?B?WlZMYnpqOWIwY2k1c2IzSDZZUTdIL1l6TmRKT2V5MHUvU2FCWEk5MXhsVVdv?=
 =?utf-8?B?aDRacTFwc2ZYMVFudjZRWCtBQlVEZk91WjJzUkxzTHRxNnh6QTdEeUw0UEUv?=
 =?utf-8?B?d09sUWNUclEyQmZOaHVHWmppMElQYkdvdFFEdjBEM1hGTWpycDg4M01ESDN0?=
 =?utf-8?B?YlBGNUhFMXNKRGhqNXU2anVnTmVhSXlNcXJ0MGpkajdTb2ZpUC9vbUtKaXBE?=
 =?utf-8?B?c3VMN0lvWnVpYXpCdi95MXdnTEViZUR2UmhFelhCajMzRmp3Y3pPWTlhN3pD?=
 =?utf-8?B?OTNmMkhLV1daM2ljNkdWNFRIdzkvYzgwTzZtTGFnbFRvQXRzQW9oVkFWODJk?=
 =?utf-8?B?NjVWdlFlYVBzRnN3ZUN1NDMzS25JK1d0YzdxOHRlZE55bmlaTm4zZGxVQkw1?=
 =?utf-8?B?VW1EMkc2aElyRVRWTGdtVlBwTk5pMkJ0anZVRVFmK01OQWZ0Vms3ZkVmZllk?=
 =?utf-8?B?MTlJZkdDbk9MckdxSGl5SDFTZTBoVVZLQi94ZXhITXl1WnQ3cVA0L1RiVU9y?=
 =?utf-8?B?dFE5S0Y1UEptd0VHUVhNYWszdS94ZVBsZnZDL00yUGg5dkQ3QWYyRFNmbkVM?=
 =?utf-8?B?L3lIVzgwbVFueDBXb0ZqZnBJUExzaFBLQ24weS9XU0ptUmQ3V2NCc2EvNFNY?=
 =?utf-8?B?WHBtakMwY05PYk4zc25Zb1IrWHBHcS9uakpVanhhRTR3S0pLWURiakZuU010?=
 =?utf-8?B?VzhkUDczd0h0NmZVQWhpUjg4Y3R5Vy9YUGpzSm52S2I1VWNKenBhdnRGSDJu?=
 =?utf-8?B?L0VHVWx4OEpCdnVtSnd3YXZEV0VYWkZ6eGRxa014NHlrdk5KRlg4MldxdSty?=
 =?utf-8?B?Qkk1bnlCYUI3Y0xLdWZudG5sUWJyU3A4ZGQ5aHMyVUVtK05KWXV2MHZ0aEtk?=
 =?utf-8?B?bXdXbFF0SUdlL0llUjR4ZGRPMnVZeThKWTBHOE5yb2JCY1E3dm1TWEpDMjBQ?=
 =?utf-8?B?M0ZHcUVObXphREJuSERZRzJHNUhsTENQWkhPSDNBblplQXR6cFpjbEFLa0Uw?=
 =?utf-8?B?cWJ4Z2RHM1RvNDZlVW44L3JQV3BRem5VcEpzTmkrREhxZjhrN09QOWxpUE9K?=
 =?utf-8?B?ZVFSYzJLSWQ1TVFRM0M5ek1PUEF4MXBLODJlWlg5Zk1tTGNhNXBHNEMxcWZQ?=
 =?utf-8?B?ZVhoTGVSNmF3SXcwa0hENlVQamZCZ1JvL2xVWGhsQlNBY05GOGdmRXF0aVgz?=
 =?utf-8?B?TFRWYW9teUNPTkdxNUdQYzhsb3ZEdWxZaTZMN25QL0JJMHpnMDVoVmRUK3Fr?=
 =?utf-8?B?MXVNTk9zNjAzdHJIdENZeTJOeTdORDNXSmVQVjlGcnlSL25TZ0xsQjRiT2Mr?=
 =?utf-8?B?L2tHZ1ZFSHFEdjBUYlNuRGRPRUVJYnJKWjluRlYxb2J5ZXZXaURRTGd1RFB0?=
 =?utf-8?B?LzZkQ0oyN0ptSG1lb1ZoRkU5U1ZvVUEzaVpYV1V0YzZ2bDlqZTdSWnJtaGNo?=
 =?utf-8?B?dStoaTJtR2h5MUNrV3FPd1RxSlpzUWx6ekJqbTM4emd3dEV4cmhrOTJqaXhk?=
 =?utf-8?B?N01nbm0vbG9TREpneS9JbTZ2MEs3TVcrUFptN3NtR2xjdGR6R1FkSDlZa3NR?=
 =?utf-8?B?QjBOSStIb0pUZU5rSndtZW5WWXVsbzJWbG4xdTJIbkxQaXhaeHdpc0Nkcm5r?=
 =?utf-8?B?UW5YWlZmRFhGTEY0Q0dicXVjaC9lZithdVJkYzh6NGFCRnRWWjZBeENkVWF1?=
 =?utf-8?Q?jfn/4RY5oNk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M0V1YTNvRytMYVFpVVRnUjRxWE4walkrVXNZNFpKWnk4M3hodnRrZXZ4K016?=
 =?utf-8?B?eDFNYWJNT1loQTNGT0tiaktKUmVpNE5PWGVPak9sNEx4RnVydEt5L0x6cmlQ?=
 =?utf-8?B?czl2WmhoVE5pUTR2RmpIS1Y1V1pray8xYVNzK2NQbVF4T0pENndFdmp1OUtS?=
 =?utf-8?B?ZTVxMisxV3ZhY2FUVnBLd29CQWtoaGEwdTlUWUx4MFBEdWd5b2lQVk9YYi9y?=
 =?utf-8?B?ZlcwVTRMQVlGK3ZPaVBITVhLMFJxOHlEc25RWXJ1YUlPYTkxbWpDa0xmd1R3?=
 =?utf-8?B?b0dkY2x3K2NOVlRVazRqb2s4dkcvV1lyTC9ROG1VUVBZemY0dlArSzVYQy8y?=
 =?utf-8?B?L2I0Q0pjdkpmYVJvWGM1aDY2QzVsVkRLQkxYeWpNQ1lQNlE1aVA1K0pwOHRt?=
 =?utf-8?B?N0hHUmxZcldCc2JKZ2dXeTBSd0cyRGdLQlBuNHJGdi9kWU9hSUQ0bFYwenJr?=
 =?utf-8?B?bG1IcGRsYStvdGRsWW9yYlVuTFVvTlhKRitzU29KcVE4aFM1MzZJelRIcno3?=
 =?utf-8?B?VVl5dnFjLytObFRNeHBpYWE2bnpibFZCaTVFRTNhditZMVB5dXJsQS92c1Vo?=
 =?utf-8?B?aTBaaW1HY0J4aFczK3kraGJzSTZaSGd2TFJMMnpNQTZqODQrdlh4b1J0TnE3?=
 =?utf-8?B?dE96SnVFQlV3c3FWTEdrLzg3NXkvdzRnbHBrd29Pd2xycFM1T1NuYzNpL3FF?=
 =?utf-8?B?UWthUGpYZnBraFJpRFJWS2QrN0FTaXVzSnNvWGljOGJ4WTQxakFXZU1MeG5M?=
 =?utf-8?B?dFppRzlOeXAyODNYbm9QL0NEbkVQUmRnTGhQdlNpbjBYU1NqdUIyYXE5WHh6?=
 =?utf-8?B?TlJsRnpNaUFFMnZncmNTTGRqWmpGalppVWNxSnJ0ampsaUZDNWFqZFV4Q0ox?=
 =?utf-8?B?SEl2STlxeXQxVitaQUhET1B5TGs2SHNiZVdsekl5aEYvUHBxK2cxeG91Mjh3?=
 =?utf-8?B?TnlvMXUwWE5wTDFWZDhHc0J5bW81aUFXV3R5SWlyREhkVlFyeTFRUkdlb1Fs?=
 =?utf-8?B?bzJyVHlsbXpJamUxZm9SUHdUVDBRS0VHWDVtQmhKZnZUd3dPRWhDK2R6am94?=
 =?utf-8?B?bFM4eDMwMHpjK3NWWldPNFh4WitvVi85WmE5QXVaeW5VMEsxcTZNSGlKcTJK?=
 =?utf-8?B?c2wzbWNYK3ZnWGt2TXhuNHA3QnJYOFp3SDRXTWtndWhtQWdQUDV3OE9nMy8y?=
 =?utf-8?B?bUYyOUlFSU9NMkgrNmdBaVJGdVh4aG0rWEYrbDdnRVpCMy92MGhUN2toVEVD?=
 =?utf-8?B?NGg3QVFvaURSLy83R2NValBqQnl5Wm5VNC80clFwNzBJNXRxTVJydzJHNW9F?=
 =?utf-8?B?VjFJMTVMS01xeHNCU2tMKzgwcks1bCsyV2F2b2dlMm9wSllKQmpmSDN6UUo4?=
 =?utf-8?B?NEtNenA0YzI2Nlk5UmxISVBBUVlnT0tlUUxpbC9ta083NVBNTHJ4Z2EvWllv?=
 =?utf-8?B?NjFzTFpFOGdnRUVRZStsV0VjVU9jK1AvbldmZWxYamVwa2J6eDJYQ0FBTkZn?=
 =?utf-8?B?d3AzNTEzMkgvN045K01BMERCZmlUYVJWK1lRNlhQcEpjRG1vODRZNHFKRFFz?=
 =?utf-8?B?NGQ3cVdJVDczMlZOS0M3Z1N6a2FONCt5S3BQbmxPYUZSZThKeTZyazFFMUtv?=
 =?utf-8?B?SnA5RGZ4RVhuZ1lpQTRlaGxJVWdqOFhQdk9VK005blVza29YcFN4K2c5TEhQ?=
 =?utf-8?B?Q2ptSFhJTzk0K050b29vSEJtZ0ZjeVVsaDFwM3BvTTdDMjZTQ0thYlJMaUlV?=
 =?utf-8?B?NEFrYkZNd295UGlLcHdNRjBiRXhGTFZlS3JkNnJYUnpRSXZJZ25sdUtYYjQr?=
 =?utf-8?B?VlBHVXc0c0UzcFRSNWNJMG1mYjYvR3doYTRtZi9oTngyUlc5TXhyK3diYU1G?=
 =?utf-8?B?ZTBXL0JZc0tDWDJTdXRoT2hBVU9BSXROS0RwZjlqdjFwUm5GOXdHcGFVREpY?=
 =?utf-8?B?d1Vpd3luNjBVcE5sRVluNkxiUlNPZit5Z2ljR0RaaUN5eVlkdzdzSXVOK1dP?=
 =?utf-8?B?NkRLMGs4TENUWlRIZWt5K2ptUXVMc0p3eWl2VDBtQ09WczRIdlc1L3crR1hQ?=
 =?utf-8?B?WTlIQWdOcTRWZFlodHVzemhyNkxYemoxaURiRDg1MUlSVkFkcXZzVjJaVWs2?=
 =?utf-8?B?TkFMNHMyL2ppUXMzYzl3bHo0eUg5YzNveXNkdUQvK2lpVE9nTFRZRWVWNmRi?=
 =?utf-8?B?VUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 41999f4b-fee4-40fa-f172-08ddb80836cd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2025 18:59:17.9792 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DmDZfuwbQJr4ByZpv2KD2o/1bp9uZyttnwexUVyOOal5B3bZgahdoVOWtQqUGJrhwDtGa6BSZz3SG4efLnxB/M1cNbYffd3tQDo9DtThtF0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8044
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751309991; x=1782845991;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=2HrJmpK68pzOGVAu6PwDX7y0XWSuImKNrjUjFD4K3Zc=;
 b=ZmiMXVoOd1QeUnaJ2NGAtJTUmx8V7KlD7etFGPJaTCgZa31Jjnvb8YCt
 Sp3QQ9nhVwTKuCBysRmp3/7EtG+Y2t0faizDuX4JfAeDq9OLsVkV07wRZ
 Ogx19MSP74Y4lY/t7389ptgRbIPFEIcFOnSmU1qNo1VPxx+2Dzl/2UDyT
 uCpI8rZs9EgrkunI+5/yBEqC25s6L/044zLLZoJijNZeY/piW9zy6K2VM
 w5EzL6C8AizARTIKN5OIcKvPtLB5ZhfwVxzIiqBkniNBfvx/yCe6t5KBz
 G0DeRai6DfQt278CU28S3MPxfoAyguBnh8Q+NR9K9uvvWmH4zAnuqp+aS
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZmiMXVoO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
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

--------------4KyuwbtZykk4GHttMQUWAw1X
Content-Type: multipart/mixed; boundary="------------0eacEgn2zRnn570LDrd2VUO0";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Damato, Joe" <jdamato@fastly.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 "Dumazet, Eric" <edumazet@google.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>,
 Martin Karsten <mkarsten@uwaterloo.ca>, Igor Raits <igor@gooddata.com>,
 Daniel Secik <daniel.secik@gooddata.com>,
 Zdenek Pesek <zdenek.pesek@gooddata.com>
Message-ID: <f2e43212-dc49-4f87-9bbc-53a77f3523e5@intel.com>
Subject: Re: [Intel-wired-lan] Increased memory usage on NUMA nodes with ICE
 driver after upgrade to 6.13.y (regression in commit 492a044508ad)
References: <CAK8fFZ4hY6GUJNENz3wY9jaYLZXGfpr7dnZxzGMYoE44caRbgw@mail.gmail.com>
 <20250415175359.3c6117c9@kernel.org>
 <CAK8fFZ6ML1v8VCjN3F-r+SFT8oF0xNpi3hjA77aRNwr=HcWqNA@mail.gmail.com>
 <20250416064852.39fd4b8f@kernel.org>
 <CAK8fFZ4bKHa8L6iF7dZNBRxujdmsoFN05p73Ab6mkPf6FGhmMQ@mail.gmail.com>
 <CO1PR11MB5089365F31BCD97E59CCFA83D6BD2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <20250416171311.30b76ec1@kernel.org>
 <CO1PR11MB508931FBA3D5DFE7D8F07844D6BC2@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAK8fFZ6+BNjNdemB+P=SuwU6X9a9CmtkR8Nux-XG7QHdcswvQQ@mail.gmail.com>
 <CAK8fFZ4BJ-T40eNzO1rDLLpSRkeaHGctATsGLKD3bqVCa4RFEQ@mail.gmail.com>
 <CAK8fFZ5XTO9dGADuMSV0hJws-6cZE9equa3X6dfTBgDyzE1pEQ@mail.gmail.com>
 <b3eb99da-9293-43e8-a24d-f4082f747d6c@intel.com>
 <CAK8fFZ7LREBEdhXjBAKuaqktOz1VwsBTxcCpLBsa+dkMj4Pyyw@mail.gmail.com>
 <20250625132545.1772c6ab@kernel.org>
 <CAK8fFZ7KDaPk_FVDbTdFt8soEWrpJ_g0_fiKEg1WzjRp1BC0Qg@mail.gmail.com>
 <CAK8fFZ5rS8Xg11LvyQHzFh3aVHbKdRHpuhrpV_Wc7oYRcMZFRA@mail.gmail.com>
 <c764ad97-9c6a-46f5-a03b-cfa812cdb8e1@intel.com>
 <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>
In-Reply-To: <CAK8fFZ4bRJz2WnhoYdG8PVYi6=EKYTXBE5tu8pR4=CQoifqUuA@mail.gmail.com>

--------------0eacEgn2zRnn570LDrd2VUO0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 6/30/2025 10:24 AM, Jaroslav Pulchart wrote:
>>
>>
>>
>> On 6/30/2025 12:35 AM, Jaroslav Pulchart wrote:
>>>>
>>>>>
>>>>> On Wed, 25 Jun 2025 19:51:08 +0200 Jaroslav Pulchart wrote:
>>>>>> Great, please send me a link to the related patch set. I can apply=
 them in
>>>>>> our kernel build and try them ASAP!
>>>>>
>>>>> Sorry if I'm repeating the question - have you tried
>>>>> CONFIG_MEM_ALLOC_PROFILING? Reportedly the overhead in recent kerne=
ls
>>>>> is low enough to use it for production workloads.
>>>>
>>>> I try it now, the fresh booted server:
>>>>
>>>> # sort -g /proc/allocinfo| tail -n 15
>>>>     45409728   236509 fs/dcache.c:1681 func:__d_alloc
>>>>     71041024    17344 mm/percpu-vm.c:95 func:pcpu_alloc_pages
>>>>     71524352    11140 kernel/dma/direct.c:141 func:__dma_direct_allo=
c_pages
>>>>     85098496     4486 mm/slub.c:2452 func:alloc_slab_page
>>>>    115470992   101647 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_in=
ode
>>>>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap=
_alloc_page
>>>>    141426688    34528 mm/filemap.c:1978 func:__filemap_get_folio
>>>>    191594496    46776 mm/memory.c:1056 func:folio_prealloc
>>>>    360710144      172 mm/khugepaged.c:1084 func:alloc_charge_folio
>>>>    444076032    33790 mm/slub.c:2450 func:alloc_slab_page
>>>>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
>>>>    975175680      465 mm/huge_memory.c:1165 func:vma_alloc_anon_foli=
o_pmd
>>>>   1022427136   249616 mm/memory.c:1054 func:folio_prealloc
>>>>   1105125376   139252 drivers/net/ethernet/intel/ice/ice_txrx.c:681
>>>> [ice] func:ice_alloc_mapped_page
>>>>   1621598208   395848 mm/readahead.c:186 func:ractl_alloc_folio
>>>>
>>>
>>> The "drivers/net/ethernet/intel/ice/ice_txrx.c:681 [ice]
>>> func:ice_alloc_mapped_page" is just growing...
>>>
>>> # uptime ; sort -g /proc/allocinfo| tail -n 15
>>>  09:33:58 up 4 days, 6 min,  1 user,  load average: 6.65, 8.18, 9.81
>>>
>>> # sort -g /proc/allocinfo| tail -n 15
>>>     85216896   443838 fs/dcache.c:1681 func:__d_alloc
>>>    106156032    25917 mm/shmem.c:1854 func:shmem_alloc_folio
>>>    116850096   102861 fs/ext4/super.c:1388 [ext4] func:ext4_alloc_ino=
de
>>>    134479872    32832 kernel/events/ring_buffer.c:811 func:perf_mmap_=
alloc_page
>>>    143556608     6894 mm/slub.c:2452 func:alloc_slab_page
>>>    186793984    45604 mm/memory.c:1056 func:folio_prealloc
>>>    362807296    88576 mm/percpu-vm.c:95 func:pcpu_alloc_pages
>>>    530579456   129536 mm/page_ext.c:271 func:alloc_page_ext
>>>    598237184    51309 mm/slub.c:2450 func:alloc_slab_page
>>>    838860800      400 mm/huge_memory.c:1165 func:vma_alloc_anon_folio=
_pmd
>>>    929083392   226827 mm/filemap.c:1978 func:__filemap_get_folio
>>>   1034657792   252602 mm/memory.c:1054 func:folio_prealloc
>>>   1262485504      602 mm/khugepaged.c:1084 func:alloc_charge_folio
>>>   1335377920   325970 mm/readahead.c:186 func:ractl_alloc_folio
>>>   2544877568   315003 drivers/net/ethernet/intel/ice/ice_txrx.c:681
>>> [ice] func:ice_alloc_mapped_page
>>>
>> ice_alloc_mapped_page is the function used to allocate the pages for t=
he
>> Rx ring buffers.
>>
>> There were a number of fixes for the hot path from Maciej which might =
be
>> related. Although those fixes were primarily for XDP they do impact th=
e
>> regular hot path as well.
>>
>> These were fixes on top of work he did which landed in v6.13, so it
>> seems plausible they might be related. In particular one which mention=
s
>> a missing buffer put:
>>
>> 743bbd93cf29 ("ice: put Rx buffers after being done with current frame=
")
>>
>> It says the following:
>>>     While at it, address an error path of ice_add_xdp_frag() - we wer=
e
>>>     missing buffer putting from day 1 there.
>>>
>>
>> It seems to me the issue must be somehow related to the buffer cleanup=

>> logic for the Rx ring, since thats the only thing allocated by
>> ice_alloc_mapped_page.
>>
>> It might be something fixed with the work Maciej did.. but it seems ve=
ry
>> weird that 492a044508ad ("ice: Add support for persistent NAPI config"=
)
>> would affect that logic at all....
>=20
> I believe there were/are at least two separate issues. Regarding
> commit 492a044508ad (=E2=80=9Cice: Add support for persistent NAPI conf=
ig=E2=80=9D):
> * On 6.13.y and 6.14.y kernels, this change prevented us from lowering
> the driver=E2=80=99s initial, large memory allocation immediately after=
 server
> power-up. A few hours (max few days) later, this inevitably led to an
> out-of-memory condition.
> * Reverting the commit in those series only delayed the OOM, it
> allowed the queue size (and thus memory footprint) to shrink on boot
> just as it did in 6.12.y but didn=E2=80=99t eliminate the underlying 'l=
eak'.
> * In 6.15.y, however, that revert isn=E2=80=99t required (and isn=E2=80=
=99t even
> applicable). The after boot allocation can once again be tuned down
> without patching. Still, we observe the same increase in memory use
> over time, as shown in the 'allocmap' output.
> Thus, commit 492a044508ad led us down a false trail, or at the very
> least hastened the inevitable OOM.

That seems reasonable. I'm still surprised the specific commit leads to
any large increase in memory, since it should only be a few bytes per
NAPI. But there may be some related driver-specific issues.

Either way, we clearly need to isolate how we're leaking memory in the
hot path. I think it might be related to the fixes from Maciej which are
pretty recent so might not be in 6.13 or 6.14

--------------0eacEgn2zRnn570LDrd2VUO0--

--------------4KyuwbtZykk4GHttMQUWAw1X
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaGLehAUDAAAAAAAKCRBqll0+bw8o6OgE
AQCPuOZGZZUfJdWLx1L7H1a9NHdLxv3P3qcozcO1fETt1QEA7ZcUR/2X12dxwaytap6ARoS3DT5j
ejRlQZKL4AicnQg=
=f36N
-----END PGP SIGNATURE-----

--------------4KyuwbtZykk4GHttMQUWAw1X--
