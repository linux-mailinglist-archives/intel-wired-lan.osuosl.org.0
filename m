Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D0F78234B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 07:47:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1E6E81ED5;
	Mon, 21 Aug 2023 05:47:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1E6E81ED5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692596867;
	bh=Vjkn4QsguOrnRGftbSpMT2hFz6FOl/VJyIFjn7fl/Mg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kKlKT7TzPfVDjk1MJMZfUWrFHT2LCfZOWA44lnO2y3CalzrpWSh3N0MCifMgEI7DN
	 i6dvSPCk4RzG6gzb2tS9dDK6AMTubnf+fJo+3hpMBpltdFHsHzv25ZzgFBS1lfU5KI
	 S605S4UgFf3e0pUQOsHWko3WfNASo8RAKKMT1uspcuoTNBt1dliKw0lKEjvxIqT8v0
	 n39795gBwZil7lCvPY/qEphkR1+1R18bsEZ0QVnh8Wa2LeFb5wYC5hgog/RAlarJta
	 5wlL5wTlS9m5PvFRUn/qjcw5BZe/Wke7sdj9FbXOXlo+5v56iH6Ze/4AvnZAs7nV6c
	 B5ENvMcj4NpPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zfoSjdMC2SCj; Mon, 21 Aug 2023 05:47:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD29481EB7;
	Mon, 21 Aug 2023 05:47:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD29481EB7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB39B1BF337
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 05:47:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BE31E408D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 05:47:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE31E408D4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b7W-kwUpEC39 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 05:47:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C6D75400C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 05:47:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C6D75400C6
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="376253490"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="376253490"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2023 22:47:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="859355981"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="859355981"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 20 Aug 2023 22:47:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 20 Aug 2023 22:47:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 20 Aug 2023 22:47:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 20 Aug 2023 22:47:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JXIKZo29zx4VsAPaHUMZBVeYdwAOk09XPbWHPT1yAVxzIcV43XZ0Rb/3Y21hSxptrYoheWZRGggLU4rU2zDqZ7FSVN7zVTNq4CDuWvK9nWi3IjZHh9owsmfLD0Mo3Qo6/eDEEf/g4+xpcSmJX1pCCUj1pnkJRhRs2egvXA8q7/6oCNUTbqHfF88GFV37nE1zuBCgTm1xgfV9BgpHACuueyS7hWgbNX4LmToBQniHsINkXlJxLppMFqBs84e2UP5RAOHDg8Uu1CupjgQM9yfwCUL5eTlIbfOIVvpfgBG9CwXwwWMCrGCCN2eu/x9c1Zx5PKyXm8bE4CoEBZpgShlNpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WtGQJrP9xzhcRCdCNFLz7RWcVs8iJRM8zpOcpMDXTfA=;
 b=CeV8JusK9TzZgeS+OKeljNse61jpC6q6m9drxSvVDwgwunSDpZcup7JoKnJoODuuAo5RveaonSrvYcown53VF7JYcquvvYJX3BSa+MnIPZ64f7SPTyeVKXo5iTg0nwpv85a70gA1AAb+w3FCM6SHzWo75o8c43RjDcasWfgdWERBszldfWGxGnTTnA221GxmwkRt5lsD8GtkAq39Fgb74p05fzSS3o8x3K6pdZEm9PdEtLhRCZxnQ5ZNG1UT5aDFD5JVLiK8AonTZJ2efF9cHf8te+gUT5QxN8cRSl6n9yZgqd7Q0X6iS02EqUHid3/z8DwHqtgvCZPENtctsFhDLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by DM4PR11MB5326.namprd11.prod.outlook.com (2603:10b6:5:391::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Mon, 21 Aug
 2023 05:47:36 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cc5:755c:8f90:184b]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cc5:755c:8f90:184b%4]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 05:47:36 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: Alessio Igor Bogani <alessio.bogani@elettra.eu>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] igb: Avoid starting unnecessary
 workqueues
Thread-Index: AQHZuyB3xVxDQT1Y2UG/xVikryeaIq/0UvBQ
Date: Mon, 21 Aug 2023 05:47:36 +0000
Message-ID: <BN9PR11MB535470E41B7DFF4408668AD1801EA@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <26d9aed2-6eba-9f19-3948-8d6fb8c9768b@intel.com>
 <20230720145029.19674-1-alessio.bogani@elettra.eu>
In-Reply-To: <20230720145029.19674-1-alessio.bogani@elettra.eu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|DM4PR11MB5326:EE_
x-ms-office365-filtering-correlation-id: 01d3b27d-f139-4ce4-90d9-08dba20a1f92
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6WJE+yGhAPI90Wr+Twkkw0++x/cqDLBMcXJxls2vaNThZWgFWvBFpdhXR5fB3JeHTaqh98O7beVfl70B6X5OJlKPfy60PvXFd1W7OEJcmjj09n4IDx4SxHhAJI5vIBIFj7yO14tgzmFbCLmp0Ppxs20TOjHX4yUvpRDpNG7+FIC2uKUWsCFmrgz61B1BPE0BWKzQykxbxY3DYetJfMvBsNoXsnVMNx4NNTMMYZUwC5do53qd2l/nW6bBrV6xd2LwfZDE9yjOjN84Pa77DOY8ahxMeYdhpchIVSh0W/AqG3IiAr5ryn9zHdGdIlZ8L2lNcOeV3m/mjhL5okbVr0FFiHCnOfdpz0VCknW5Gu1gkItSAYYIScl3FemiLiIGFDLMfiy4jb/VZJm2hBuSg5OXh99rT6nURwkaNV5xQG8JQ662N/bFT/+xOU/vCCF4usTeV26qicb7V4gDFBI0O3oZIyGR/8nXYnsbX9G2PBvYKdC2gyMhp4KG5Kfqq8LHGZEQDl56lhuIGLH4HinXAaFB6+3UlbUrRvxWHIbkCMGpJYs9Uma52tJb6JLZov8Msdrc+o+X0Ibh2JKbJt4CjRgLZp7gBsOm7ut473IAD2RJFI8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(396003)(376002)(366004)(451199024)(186009)(1800799009)(2906002)(66556008)(66476007)(66446008)(64756008)(5660300002)(52536014)(66946007)(8936002)(316002)(8676002)(41300700001)(110136005)(76116006)(966005)(53546011)(478600001)(6506007)(7696005)(71200400001)(9686003)(26005)(83380400001)(55016003)(122000001)(82960400001)(38070700005)(38100700002)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GJecOKG0cKOFQC9Rg1dY6UDNXTmUbwqnPS0RcsGQJahd5Av4tbdnKXJ5EWh5?=
 =?us-ascii?Q?sw8lulxxpNtUCgj+Vml4okCmZP669NQ7NgdbVCYmlgBBXLSxdAjAmmW/4rNU?=
 =?us-ascii?Q?AU1QK0r4yAhVSdS1Uo6V4e8vI14HUUDR3k33Rqmdcsd5kZcgLqCdbB5eV7TS?=
 =?us-ascii?Q?h23ZfrTgf9BdAaqGRISbEMWuaiZcpq/FYiZAB9HeA9BnSVqSbFrI1WklrNVB?=
 =?us-ascii?Q?Ul395f3PeyXdcrXoiwcwKJ57pgRiI6rkPoulBUiRVmjFSu848R3vkmjMMcxW?=
 =?us-ascii?Q?30TEjqvCx/ldEjMULwYbWXqxKY86mblb4z/7+IIystgeRcfTPKTCiRlgNQXB?=
 =?us-ascii?Q?JZVgHlWQeZH8esDUfWRf/sRq9B2mBGfykUk9l5ii4vkhKr2Aowx5jLv2NW6m?=
 =?us-ascii?Q?iEtf1T2FQQxqYPYHGpPjJq9FoHCUciSZk/iLO3cIRKeIDXCYDsUQb1gX6mNK?=
 =?us-ascii?Q?j+FHWWph5rVx6PMBydUSue4OdCtQjs5nwB/lptXr5D0Ae9rZqFTZum/wqZ3L?=
 =?us-ascii?Q?Wx2aUWSPW3Oh9gSAH8iG0g5ovEu4jCfkfl3ZhstJhxVKNQKOGCEmnEijM5g8?=
 =?us-ascii?Q?WQ5d1ZqR+ZVdBN9AzOU1B5728TbR3T7PpnYLA9lZZuT8dg8kbi4J/fvHg5UW?=
 =?us-ascii?Q?zHMyVfaiL65rk1iAHMdQT+yvxtvmlUVFpwK8OB6nZxDJhYDug5K/cmWMvXM3?=
 =?us-ascii?Q?RdwBuDpK1yUj+ZIbGKSXJbrpWlgrhT7Z2xxPVlUF2rlqKCZhi8IKlZQ2ecp5?=
 =?us-ascii?Q?s6hMLR3322jxcF3hAtm+FwBdwXMIYV+8Gx6FBM+jpWp+SO/RuJHyj3RpzIAa?=
 =?us-ascii?Q?BYdwYzSgTxCkl79vcJeHFXFcHEJPRNhmMUi2x28gk7uc9SP5apySvjdsm2ia?=
 =?us-ascii?Q?yigk6QPMnB/otQ9YEDGcQUda4WIJ2bv77OF8vqZZ0y5AAkKxeq2zDToRKKdy?=
 =?us-ascii?Q?xliNtUbQ7A1XkFSHDZLqxezbp3taD88RWa8MT4EK0uCKbW1+FCXxykmtjWPN?=
 =?us-ascii?Q?9Vw9GlOqjBsJBNex1uE/xx0E4Bncok23t1vHmmMezNtz78Jq3C0wkSGNqujt?=
 =?us-ascii?Q?G2vi9u8ryeglJwJon16zbi9oS8isjdz/cLCKvg7ALJ9nkNZJq9IzdZLh3Ysr?=
 =?us-ascii?Q?+h5d9K3bkPyoczQBLUkuS6gUeDuvmYiBPj8Tzm0jG02tj2GFGFmA6jbYJOTZ?=
 =?us-ascii?Q?NAZzGs11iP1aw3Oy04/iETI18R0wX544Yx6uPe1VN1Kr8nmK9ne1fu5Aa/Or?=
 =?us-ascii?Q?2Qu/SYekTr4dpAT2e6OzWa529gIuV5CcbvCq2tsLkWWAkRGNINSguqbgQDa4?=
 =?us-ascii?Q?fowGyFuYmp4b/svG+6XFVDxbbdg8FkzmRf/taWj3DhrG7/zfASd+rSxrEWtu?=
 =?us-ascii?Q?v01V/zAmzfZ2ZkDqZtIe3enstHrCNtO87W0RfZ3uYH+npL+y/7qxegPWiYrn?=
 =?us-ascii?Q?nH3TLsV8ldaP2t99sl+6SbUWrcoV6x1+pYW6wp2RY42OgCiTILftwiLZ9LMD?=
 =?us-ascii?Q?ebwUpky5BKdFoP9R4fk99rr8kh44zLjASdGkk0eoZsCZqjXS9rfFBYbcmpnG?=
 =?us-ascii?Q?5hKktUxjRZ+PF2gE25jdfK/X1YcS8PPzAY2Djow9?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01d3b27d-f139-4ce4-90d9-08dba20a1f92
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 05:47:36.5539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: quGt6D0CC0S2q5QcKhY+FH75bz3nWOqKp42uu5tC5Irf7989ut5Jl9RXiC/L+QuuKVODwYMSBorGXnZh+CshFYXtT/rqjn7gOQqJ8OdeNWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5326
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692596859; x=1724132859;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WGie8cwxIPlI0+VWOrBHqxoWP7YbOl+WaO78DlIFvws=;
 b=KcbxEINJ4eJdwGRjf3U67FFP4hDvkU/1bHHJ1bQ+CjXyqWD2OTUxFEYw
 Ig5XhSTHC5LYoFMFEUrDgkljwk/ZnfuyWzp/O88Zf7mJacu54ZG67FGFS
 oz27Z+G5H8PrB1Qg99DL/tHoUQLwKKPk4nrwnDqm8CGBH5aDLYk+a6/Jw
 +QI/ncER6pO7zRbPdfvWiJbSqMpdgji08vx8sO8rTDyilaY4hNr6VQSFb
 diofBiPqwEBoH9GVlzX5/Hx1Hzgp33HdGohKJHCgrSTqqSiWyfCloAqQr
 AU/5KPbwJidgc0Vvpw8+UhqzhFYeI2nL5JL+uSxIlrTw13yW0lJi/qv4q
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KcbxEINJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: Avoid starting unnecessary
 workqueues
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Alessio Igor Bogani
> Sent: Thursday, July 20, 2023 8:20 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Alessio Igor Bogani <alessio.bogani@elettra.eu>
> Subject: [Intel-wired-lan] [PATCH] igb: Avoid starting unnecessary workqueues
>
> if ptp_clock_register() fails or CONFIG_PTP isn't enabled avoid starting PTP related workqueues.
>
> In this way we can fix this:
>  BUG: unable to handle page fault for address: ffffc9000440b6f8
>  #PF: supervisor read access in kernel mode
>  #PF: error_code(0x0000) - not-present page  PGD 100000067 P4D 100000067 PUD 1001e0067 PMD 107dc5067 PTE 0
>  Oops: 0000 [#1] PREEMPT SMP
>  [...]
>  Workqueue: events igb_ptp_overflow_check
>  RIP: 0010:igb_rd32+0x1f/0x60
>  [...]
>  Call Trace:
>   igb_ptp_read_82580+0x20/0x50
>   timecounter_read+0x15/0x60
>   igb_ptp_overflow_check+0x1a/0x50
>   process_one_work+0x1cb/0x3c0
>   worker_thread+0x53/0x3f0
>   ? rescuer_thread+0x370/0x370
>   kthread+0x142/0x160
>   ? kthread_associate_blkcg+0xc0/0xc0
>   ret_from_fork+0x1f/0x30
>
> Fixes: 1f6e8178d685 ("igb: Prevent dropped Tx timestamps via work items and interrupts.")
> Fixes: d339b1331616 ("igb: add PTP Hardware Clock code")
> Signed-off-by: Alessio Igor Bogani <alessio.bogani@elettra.eu>
> ---
>  drivers/net/ethernet/intel/igb/igb_ptp.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
