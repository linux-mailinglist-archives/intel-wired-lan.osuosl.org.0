Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96877802C4D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 08:46:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF66F8144F;
	Mon,  4 Dec 2023 07:46:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF66F8144F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701675966;
	bh=XxMMaEABaTe8H2a/BiHZYY8oD/VEbAk8aFwIEfpIXI0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q504vaR3Ac3vg/PLyUWgJzjtLUImiMLkkcFYJ/A4aWP7uMt1WJ+kZUnLb1JcveD8t
	 a+tM/b1HL1JtdecM9Oafgb5iwdAujSbe70tLQan5LrdYRcRkqkPMNWmeiHOWau2BTS
	 grQA61yqT+9OsmbinZgu24EcxfwIyLn+QthqRHZM/hOUZfVQJ8MlTFvNCYeD5gS62M
	 /E/iOAEochcPUuiAxRAg+pbO9QfI1oSsK4hkX3nK9a63taRVpUOJLHyalfTMJX0a1j
	 rRUD9kH2Ie+v9V6A8EVaiSFvU71bkP1Ya4BWXdG+bSjiwuZw7OharnS2nhdI4xxPdO
	 OebOTWFtXaL3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kt2ng8d5Q8rP; Mon,  4 Dec 2023 07:46:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37EB3813ED;
	Mon,  4 Dec 2023 07:46:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37EB3813ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 38DDE1BF33C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 07:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0EAF74090A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 07:45:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0EAF74090A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z1LTqUZfOonV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 07:45:58 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CAA0C408F8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 07:45:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAA0C408F8
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="396504508"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="396504508"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2023 23:45:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="746744274"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="746744274"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2023 23:45:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 3 Dec 2023 23:45:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 3 Dec 2023 23:45:55 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 3 Dec 2023 23:45:55 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 3 Dec 2023 23:45:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+1+Rg7zzkL5rg7/bX11Kf1vjeXmdYF8FqyGZe0yaaSRj9L6uu0nPkbAEcA6V5mGLzdMy9wmMx6u3QDBMGcD/ED8Qo+vox933MHKAKKbPtTOl29PWdgpZD8Sp2uvAmsZLGRjYFCo3u27CT3FM2PvQ1SJgk9aJjVA/OrWRMTpIly+aN6CACt10fDwsbOTvQc0skLwgmJpuM/4+Zt8jGIcu5dL+Iwul8p4CWHmxCnD8lozBZscWoqbIromo2IUFonRGULGrdgU5uJiPF7wrjRg+q5edFtLNy2Y/JDO8of9SugacBSaDfToyXmF/V0wq5f30EhTHT6DH2yjXrXUEYR/cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=inDXWcTeaUVpkfta66XFS2qPWdLYngQoZet6MsMJB1U=;
 b=gpXfJD/Ki/uRkWmkmRtakTDK1on9o7kwDZKvzCF6Orq44Tc8OtRIxQnmyIuT+BoXLiag25JUMWyt5jULVUDD51LmA5RYvCe+UG637q0Hny3H90lP4C/hvRbqrI6NNKrskhaOJprOFYG5Me0HIjszCvAhEp8AqSMc5cT9bXKXUP5S9EDzoiR6bFLyCbmnT3YyRA6VfHana+1UcnIfFpMh5nig9JYjDgLX5aWIaGwAO6DXCoPlTaMbzphKOkUwuoK5hjxQYOKplBSn7TSz3U/zx93++TAoxD9WTNvzczSlVjlDOh92ZDY05xnR55yYV68lP3tVg7KDdd9yul2JDp51Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH0PR11MB7470.namprd11.prod.outlook.com (2603:10b6:510:288::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 07:45:47 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 07:45:47 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v18 2/5] ice: configure FW
 logging
Thread-Index: AQHaIlKNSARb54ZG3kKWVVPYgw5nJ7CYxRJQ
Date: Mon, 4 Dec 2023 07:45:47 +0000
Message-ID: <BL0PR11MB312229217B887447DB15201EBD86A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231128232647.114-1-paul.m.stillwell.jr@intel.com>
 <20231128232647.114-3-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20231128232647.114-3-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH0PR11MB7470:EE_
x-ms-office365-filtering-correlation-id: 117190ac-30a6-49f3-cfe1-08dbf49d0782
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cMrBttodIlm9eDD5O9bb0kAxdqXieAesaJ3/qAveKbR6V4E6BAcm+VkeuxdV+cpyg1aabcwpdqP8rSLpXnvpw6qnER7u6eV6JVBSVomOirgSLpnB2srBQjQLOVhG9AZH8DyaW5xYmqft+V4PI/k7QddeGNRf045cIt0xJaLLHc0G2kNGKHWwwPA3Wugz8zoo5I+F9XNMHZQZqNxwIj8e4FLGKJ6PGdjuNzJBYeQz0C1q0P1ZsDFXTroEQ58uB9LxQxiLSWGQHmRor0psJPR0HADwi7SVjJj8dZWIj1nmf0cgKQacLOg4FerzFvtXEt3czQH0OtwT3Hd1cZ3ttiaP21H/b6J1ZU66K1fghBcGi+N5phAD7/sOAd+SXbYbLvWSDW1RYN62vmhM6x17x7Ip0anQdwUql5r49hdvxaic+s8tNFMTC7MoNCzZid+Ayvf1Hl1I3t/lqm722tyJtoMg+hQDWGaahnx/vSp+pCdoaOKy5dkwFuK6L+JrTnUuIKqlq7Ic239UEvNGDxqw+zmUGG7aQxrf+B1wRpRf5gxX5PidrH6QW+Q5pwEOUtLEzfyBxbKEJfdNiQTcS1nm+8TTltxulmhfOiXy9YLPe60sXGV4gSbWuUQZXSJEFI7uxIM8X9xPyTAGpsjGSVhRE+rymxZ5XgqsQVcAWwbVyIqkrD8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(346002)(376002)(136003)(230173577357003)(230273577357003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(41300700001)(5660300002)(2906002)(86362001)(33656002)(38070700009)(122000001)(107886003)(26005)(71200400001)(9686003)(7696005)(6506007)(53546011)(83380400001)(82960400001)(478600001)(55016003)(8936002)(8676002)(52536014)(38100700002)(4326008)(64756008)(316002)(66446008)(76116006)(66556008)(66476007)(66946007)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2vEJitgLOgm10jkp3fj0yOQBF/E05BAvNQ3OpujCbfBOOnoUZmRBGdzIbBLV?=
 =?us-ascii?Q?jMoeHE9FX60JTSvLzG3/CyM13EiNe0EZCQRJx/pihQFjTpPO4wdwltOYtPNg?=
 =?us-ascii?Q?5NXbfaYV71ut2cKWxXY3bdFbTx7YdgqsP6cyb+cz29kMK0M4p2Ova2qxwNah?=
 =?us-ascii?Q?ihUycH/zvnV0JGHS9mjbC3i/RTF/STF/Ct/f1HoOonp+ZHDau4lZvTrsmhaK?=
 =?us-ascii?Q?Tc2zyb0YlOWu0whx5q2s6xtB4iPHShckuw/GUSXA4Yd8YS6B3VosgEpj+XNH?=
 =?us-ascii?Q?ZoQ6D9eIma+GggNPhZAwpu9g+lbHLqMuS+2SDrpZQBlC0mNogxoT6WuxQYlu?=
 =?us-ascii?Q?x8IFZZErXX8/hs8UMVY7U5CMV2JbMCxvdG0A2dgPrvlEU75z7USNlNR9Qds8?=
 =?us-ascii?Q?VExlMxxVlvqCX72NpMTnIBhtkkq2Z03qY41Xt/20ZaVDTgq1cBAXl9RHoJZY?=
 =?us-ascii?Q?/yEbQupUSX19XOvOZXqfapi6O8AByIhAqMlHSfT/DZAr82ukwSKA8EB7lJp8?=
 =?us-ascii?Q?Zjkfw9np4oExN/iht9bjB5D3Fzqv0BkTEukQ3adbfBjmyIMC6gfbVvEX6UgZ?=
 =?us-ascii?Q?36qLnbt/8BTNn21KYb/23kydcbGnebkQU+0AVchadokWNbeKFXlPF83MqPa7?=
 =?us-ascii?Q?Aq+aGbaAmVyDTXiYxzJpnC1TrVwzf+BCjmNb3ydwD6SDaEzPCzXUJqjlH5ma?=
 =?us-ascii?Q?/dTIACLrez7vCtZvzE00JnFQd742cRod3fJ5EyaKe62om97fy3da8q4as5sW?=
 =?us-ascii?Q?VLQ9yZDvRauQWeGlx48XkWY1H3BwzIfma0MH71zolpFdR+uPr/SOoL3o1hFt?=
 =?us-ascii?Q?dGMJrV4Oad0c2Q1r6uJ5GF7BpbopUC19czrwWuq6hy1M4mabPWKx3DjCgKRR?=
 =?us-ascii?Q?PHsTElOrnaDp6dnwMcdpAFAm7OuXJ4zLIKTF13Hc65MzlI+68kMkkPEqJ5wy?=
 =?us-ascii?Q?ZVW0HFm2ZGCLTfGaKTW4YNO8cjWUaRTAtRyJfJckpRxX851BYqs5YjBRkuco?=
 =?us-ascii?Q?sgfKSmhp32diDD1UtySEcnbzxBJ79iglf2ABxGcID76sANAsVaFa3cGItl+m?=
 =?us-ascii?Q?/CQR3hTBa39bR6dhsc6C+ecrc2yOx0IjAeIyJYMYsra12+NuqLitzVed2Sfk?=
 =?us-ascii?Q?cS1cfVOTphgItZY2wkNiHxcFYPG7vbrsgsP+QTEmZQGEhtwT/eAeQAUO8T+l?=
 =?us-ascii?Q?oEpvgW4xx83Aw5Z5q5K71ARfXwKky29EOWb5+P7cdq87H7cZCmI44YL8mUvu?=
 =?us-ascii?Q?wqg8H4+lWAeyVg10oJSbQ0Ff8F6Y2K/ahZNekFyeMiiXKIGJqvIrGElxB9Zt?=
 =?us-ascii?Q?zMrQANLFpGJjNOQ2hNm977UzE0MhivqwOFuHt3QOj/GwHUbPBLje1mYAKZIQ?=
 =?us-ascii?Q?Nq+YtMfrps4qEiGLJokhnjZIhae5fgBPQT6w52PE3CflpepMfGOr5eP5K4Fu?=
 =?us-ascii?Q?I93Q1D6tGQjeX9jQQEG/U4G7qDD+zK4IwpJjfqKP4K1WYFGQQ9BTrRKT6zlN?=
 =?us-ascii?Q?9fPm82oVoQBtiBUcxBMnDNJNNbJI35BiOtFp2toZoF0un/aPlJR4vjbjMB4V?=
 =?us-ascii?Q?n/KtH0Js2LxvcSj4pPWm4sWR6xecUZ4jXeD1RLbyX9Z0jSO/mEeKSU42LoPC?=
 =?us-ascii?Q?6A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 117190ac-30a6-49f3-cfe1-08dbf49d0782
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 07:45:47.6097 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LM9e9Zp1yz3vcQtp6UFDswdgfdCxVcXJNsg0RoYiCevWZx70suie0r+ebkZ9XAoAffeOdoiiApS+h5dmUzjqUa3RXDUVFDVPFxmfTAD7Ax0oNgFolb6vSLKiayqsKX6w
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7470
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701675958; x=1733211958;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KsG8ghHIYB0K4XV8qUg0EYLJOXTyjBTkSOlxda+gCaQ=;
 b=Pku5kxrPgcGOAujZiWAnF3Hh2YfdjFuSYigBO57FuJ29JpVes+nauc1a
 Vocv6F6C3mLbVS05M96pL2qLtRMDQAXYQLL/afph4W+Qwwq0ARQMTeRnd
 EpEkfZOOxdn2G7/dkv3ty/c2YZw3Sjv7C2YJUjUhuv25qbxX9rOfYp1dV
 ObLcr+0A7pTcrPYwwgk7qEKz4y5o5i858WqKk9Ss3KVbwQ06LXYiM3DDG
 rdLTOEEwgifC6UxGIDFfZdWVLtdOfZbJiBnak1731UItGc/n3ELCgFmmq
 S+gtoNS2oXxUZPICGYbgnWWCePTZxcrAtrGsItKnTPhcTXENEsiBLhxt+
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pku5kxrP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v18 2/5] ice: configure FW
 logging
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
Cc: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Wednesday, November 29, 2023 4:57 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Stillwell Jr, Paul M <paul.m.stillwell.jr@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v18 2/5] ice: configure FW logging
>
> Users want the ability to debug FW issues by retrieving the
> FW logs from the E8xx devices. Use debugfs to allow the user to
> configure the log level and number of messages for FW logging.
>
> If FW logging is supported on the E8xx then the file 'fwlog' will be
> created under the PCI device ID for the ice driver. If the file does not
> exist then either the E8xx doesn't support FW logging or debugfs is not
> enabled on the system.
>
> One thing users want to do is control which events are reported. The
> user can read and write the 'fwlog/modules/<module name>' to get/set
> the log levels. Each module in the FW that suports logging has a file
> under 'fwlog/modules' that supports reading (to see what the current log
> level is) and writing (to change the log level).
>
> The format to set the log levels for a module are:
>
>   # echo <log level> > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/<module>
>
> The supported log levels are:
>
>      *	none
>      *	error
>      *	warning
>      *	normal
>      *	verbose
>
> Each level includes the messages from the previous/lower level
>
> The modules that are supported are:
>
>      *	general
>      *	ctrl
>      *	link
>      *	link_topo
>      *	dnl
>      *	i2c
>      *	sdp
>      *	mdio
>      *	adminq
>      *	hdma
>      *	lldp
>      *	dcbx
>      *	dcb
>      *	xlr
>      *	nvm
>      *	auth
>      *	vpd
>      *	iosf
>      *	parser
>      *	sw
>      *	scheduler
>      *	txq
>      *	rsvd
>      *	post
>      *	watchdog
>      *	task_dispatch
>      *	mng
>      *	synce
>      *	health
>      *	tsdrv
>      *	pfreg
>      *	mdlver
>      *	all
>
> The module 'all' is a special module which allows the user to read or
> write to all of the modules.
>
> The following example command would set the DCB module to the 'normal'
> log level:
>
>   # echo normal > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/dcb
>
> If the user wants to set the DCB, Link, and the AdminQ modules to
> 'verbose' then the commands are:
>
>   # echo verbose > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/dcb
>   # echo verbose > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/link
>   # echo verbose > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/adminq
>
> If the user wants to set all modules to the 'warning' level then the
> command is:
>
>   # echo warning > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/all
>
> If the user wants to disable logging for a module then they can set the
> level to 'none'. An example setting the 'watchdog' module is:
>
>   # echo none > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/watchdog
>
> If the user wants to see what the log level is for a specific module
> then the command is:
>
>  # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/dcb
>
> This will return the log level for the DCB module. If the user wants to
> see the log level for all the modules then the command is:
>
>   # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules/all
>
> Writing to the module file will update the configuration, but NOT enable the
> configuration (that is a separate command).
>
> In addition to configuring the modules, the user can also configure the
> number of log messages (nr_messages) to include in a single Admin Receive
> Queue (ARQ) event.The range is 1-128 (1 means push every log message, 128
> means push only when the max AQ command buffer is full). The suggested
> value is 10.
>
> To see/change the resolution the user can read/write the
> 'fwlog/nr_messages' file. An example changing the value to 50 is
>
>  # echo 50 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/nr_messages
>
> To see the current value of 'nr_messages' then the command is:
>
>   # cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/nr_messages
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v17->v18: none
> v16->v17: updates based on community feedback
> - create a file per FW log module under 'fwlog/modules/' instead of having
>   a single file for all the modules. This simplifies the code for writing
>   the log level because we don't have to parse the module name
> - rename 'resolution' to 'nr_messages' to better reflect what it
>   represents
> - add a structure to track all the file dentries for the FW modules
> - moved ice_fwlog_deinit() from a subsequent patch to this patch because
>   the driver has to free the dentry tracking memory
> - removed the code that printed the entire FW log configuration; only
>   print the module info or the number of messages
> - fixed an issue where we were using the wrong length when copying data
>   from the user for parsing the command line
> - release memory sooner in ice_debugfs_parse_cmd_line() so it always
>  gets released
> v15->v16:
> - moved ice_debugfs_exit() to fix unreachable code issue
> - removed CONFIG_DEBUG_FS defines because they aren't needed
> v14->v15: changed PAGE_SIZE to ICE_AQ_MAX_BUF_LEN
> v13->v14: none
> v12->v13: pulled out 'enable' code and put into a separate patch
> v11->v12:
> - rewrote debugfs code to use separate file for reading/writing
>   the configuration status (fwlog/modules)
> - added a file for configuring the resolution (fwlog/resolution)
> v10->v11: none
> no data on previous versions
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   4 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   9 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  80 +++
>  drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c  | 482 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 259 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |  56 ++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  21 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>  9 files changed, 919 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
