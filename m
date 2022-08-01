Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E1758736E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Aug 2022 23:34:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C50168140F;
	Mon,  1 Aug 2022 21:34:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C50168140F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659389673;
	bh=nr1IvjsaKVLPl5whw2OqBhlJeaXBxHcQ0fn3mEsL4lw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7A45NZZ23jMxlJbKWhOer35xaefajvlq4Ugiqj/Qvlk2sENF81fixhI2LfboMQnx6
	 nyoywIqWxCwX5nXvOykO8Vnj3LD8iDkkbTGKCWk3yP2ayRZMUi0w1hqGmhIbHYPAUG
	 pCOLqTyrtNvFpDKgQclad0AX221kibybrjlM9YaSuey+o211A/T4tBDUGiZOjsVc6v
	 j7meeepf3bObEVzXW5FJb5/H+UHz4QKAPuNTEzGNYOUXGbBJK4A9F00RYjvmWLIVgt
	 67BumMpslB7a31rm7uwYUUbvkqgn04OQgYoRomPiqdKr2LPBXzLBug25vOr0xjc3d4
	 2JpWVFh8fNxWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uh0x9bWfG1_1; Mon,  1 Aug 2022 21:34:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D09C81409;
	Mon,  1 Aug 2022 21:34:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D09C81409
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBB3D1BF319
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 21:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98E4E605AB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 21:34:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98E4E605AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TFzH8BIh6L3n for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Aug 2022 21:34:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5D1E605A4
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5D1E605A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Aug 2022 21:34:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="269638086"
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="269638086"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 14:34:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="599077474"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 01 Aug 2022 14:34:25 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 14:34:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 1 Aug 2022 14:34:25 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 1 Aug 2022 14:34:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cWrYKy+GkqC5EE48ycmpjGBrfiS4STC3eGk52YBBd0qvTnX/suF0oeLdoySqiQlHkuZ7inTGj2eQ2geOIw66x2hQN41xb45uE9HB0Xr3nmmDGpIB/uhrcJXETIPpJuxfw7Vd97RtX3CLEBshQOXsJ1vKDw2qlj73qxX1HWPxEjYudEU/1xZ+w6SOM8ZIkz4ePjIGpcKa/NRjDXwGc6aTQ0P16D8fXcEmp/ackiq/Q06E1ze9qm0FzB5eulc5ZHVYkQ0xaF9rftJu6a9W1ntgF2TT/xfSt8mEYpO6aMUT3n3HE1RKvbTw4onQRCIAFmWfnoajugO4bZvNDfag5YCqbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iOianxJnaLIEiQDrbzjlxSsenEOYAEwNM/d/ZLJ4RSg=;
 b=G9T6uCiqHGoyzE/1kOGXs4dmXa8t8pGGQ0WjNqYmZVvAZJ32lgJIUBQlB5aqIjSnO3dTIYq13qjS4nlb7aKIT6g5Q8VICSGHf8ZOn48TjVVxKikikus7f94cbLevi+EknkXZERkHmHs26v65YCROQNEHWv1wiXFwYdOpocUrRAMNsjYbazqeQ0HT1MMzy82lnoCSlYvkg38GIiBmrXwfOcAD0oTM2mCbFlE3T81dJdBiWCltFvKL6+992HiRY33caj3+2W/15yKxPGu0LySJhgl1DcJ/GypknnebY/RSax3txkaAjJnsdUc1hHlSm8gAEIEIgVhXt5ozicLr81Nzxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS7PR11MB6176.namprd11.prod.outlook.com (2603:10b6:8:98::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.14; Mon, 1 Aug 2022 21:34:23 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5874:aaae:2f96:918a]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::5874:aaae:2f96:918a%9]) with mapi id 15.20.5482.016; Mon, 1 Aug 2022
 21:34:23 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "achaiken@aurora.tech" <achaiken@aurora.tech>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "richardcochran@gmail.com"
 <richardcochran@gmail.com>
Thread-Topic: [PATCH] Use ixgbe_ptp_reset on linkup/linkdown for X550
Thread-Index: AQHYpdShf6ZZx8KJ5EqXfSPbxkfetK2akMJw
Date: Mon, 1 Aug 2022 21:34:23 +0000
Message-ID: <CO1PR11MB508966EB7A3CF01A58553536D69A9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20220801133750.7312-1-achaiken@aurora.tech>
In-Reply-To: <20220801133750.7312-1-achaiken@aurora.tech>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cf6677f7-223b-459f-17c6-08da74059a0d
x-ms-traffictypediagnostic: DS7PR11MB6176:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wt5bOGEKJ4iJBVV32hScXUV6/q2cxEeRd4UDEj09IatWFs2qThdnvDfFoGjY/FiGvWMB7iqth7Bp7SUay7vs0oGUdSN2+p2VruAGPZr7wUaU1r31IStUGJSQTpCi/BYH+AfBijvFzCqDyEstv84iuTioLn5QIYDvTtinNhEn+Vo1EwwGvmfVl0x78kBkkP0rgNtUfp05kqByISBh0YKIfFNrmz2oMxORddyZHLyrCmosNRwF2M4T96fpepuSSVnNraklhmW5/S75oEhFpJAgrE9SX56eg1bFKSqEthYQCZOG16cnCRNGeruXac14P9z97DpKV30T2xHqTRq2PWDteVBj7l9NHQPYVmflzuu0/gcvt7euBJAaCMIPgYge2tYzK7eLA5Pml5iQL6XvPzpMAzYcUpCZtPRKEKlzSXKV5hndh1Y4jYh4EqdL9ThMugC3EVbQSR/996A9qF9HL0aLb0CFTK5r6LkGySBzW0WMY9cv18LpKfU6x3ggBc09DFQeVEmYGJHAa9VKLu3Z2z+kHp3LHgpt1wtCowLYERo+3dMDItqVKpxcIj1uZbfKVNcbQpdIWRRle0hWmollE4iJS+lldif3YK8N4PDcFcG6L+egI5bQyi+IKF0iIfy2SXZKAr59MM47zU3GfvabV4NpfuopVjz4STCe1GmIgkm9q8DWZn4mD8b3LeQi7KkEyfTyX4RU/mtRcirIRwxZ9vqJspaoIdBmXYaxWbhsMM3q7TloUYCwQ7AS2OROEr3yEPP4W5e/Tk0F4FdW49YBpFozl/FLxlp5syu4Q9U6Jvj+OAkSAkeEFrXrBo5Wg2L9X2sK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(346002)(376002)(396003)(366004)(2906002)(55016003)(4326008)(66446008)(76116006)(64756008)(8676002)(33656002)(66556008)(316002)(54906003)(110136005)(478600001)(71200400001)(66476007)(7696005)(6506007)(66946007)(53546011)(82960400001)(83380400001)(122000001)(38070700005)(186003)(38100700002)(86362001)(9686003)(26005)(8936002)(52536014)(5660300002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OuB6NTnZDG/cmXtpj/ZYrMStQVBvtVeCkVLVSnW5X5h74N2Jad1+odJjPMqu?=
 =?us-ascii?Q?cRY3JWU1V3p9zslkXR2J29vuqt/07trF4UtVqRZMi1OK+wLF1aEcDoSgkPgc?=
 =?us-ascii?Q?khK7+BXevODyG4YuSBzzmo/4Ls6uajj5eC7UAwkD9IU7CYvTpQeCgL9ZhdNP?=
 =?us-ascii?Q?3ZENHZRYB4dHX7YzHzUuZv71NK0thXjwtI39mEs0jHJ2tx2L/u4a+8RAnyEn?=
 =?us-ascii?Q?ECcDo9BHKvgTt0El6RlKHgONss/FMXQ89tKplfZ5kJK5UUB99dOqiWcp/9ci?=
 =?us-ascii?Q?6sQ68SlTwn8gvsq2cPFtmcsnMP1+7vCulTEMD9KZQmQ035mQJFTXOTz30sTN?=
 =?us-ascii?Q?bZu/sTLYS6ntZjLDw4f3UkiZJhMSpG7ZcKruYws/kGsphGCT2YoGIPR7IJxY?=
 =?us-ascii?Q?1InQ0FxLZwI7ibUatQ7kQFLioDSD3nQ4ok1kzxgh8hYHqBXzOPcTmW+aIO+Q?=
 =?us-ascii?Q?XlRoUg9+FM0eWs11zL2UhZFUgVDHteDfS+4i0ld2TxHz/talFsDDU7hB6AdW?=
 =?us-ascii?Q?S6XeHjLa/d3HGb3dwXxtYWnh+qz1hRSzfInIywMtE0IdV4M9HCsCtealw7wD?=
 =?us-ascii?Q?FIyIUx3qjAShNkP94Ovx0TO59QrUqXleek+QDQc3z2Mpt55QLB1VuYEp9pF0?=
 =?us-ascii?Q?JIZMB7DRD15agpYgT95jkBEl+6qpSp56LnS1qDFlKDrw1sbVGGPkVxt9oT/j?=
 =?us-ascii?Q?tvFp558aBOLBx9wtA5y72Cf9ASvGiaj7ji8dCEuLgZH9Nbv/TvL7gZr4h1wr?=
 =?us-ascii?Q?lySp+BxjJwF8QDnEgqMvGfb3PaADvPZIaZuP92fc1tC09iT8goiowcUevrnX?=
 =?us-ascii?Q?Ug5S+GLjtEN+/QhJNTOkgFgKtngcFEMVaa8sP8149VA1z+6uu8X3G8aYifL6?=
 =?us-ascii?Q?NL3zE4CHj7DXuZ9u/cV8X5Za/r0ybXvUC3LZUAHze5lEYv+lhLM1Of55ZSdc?=
 =?us-ascii?Q?+xWnm6WxqRFvCac1I7ObrwB+7L0eQzRQQlp2HthzoCgTUbf+BnfzYS3MUJIS?=
 =?us-ascii?Q?K2vahm6GBVUeN4Xw6zmdiLU/SwaXnNk7k48v6HzQ0nFm6CBPZ5P2FHO/Zmf/?=
 =?us-ascii?Q?1ENZwaq17m6FG/08DXBgtcYx5fcAKz0ZBM9musL+XT1OGujwipfE/dlDWMqq?=
 =?us-ascii?Q?h4AyYnJFvXqKsF2suLZWZffTDULCraiKhoozkP9PFBy9MHEz8YaX1jcRFHEM?=
 =?us-ascii?Q?rUnHAwx3709N7dp6eRQ2LgDNiIuQHjnwBlqT6F4eviU6r9SPpu/xs6vp6HKy?=
 =?us-ascii?Q?zAZvulZpUQayczRh6qWx2sGZi2IhM2RSX7/9x3UazrV7+Jxc/vPi+PJv4hqB?=
 =?us-ascii?Q?/+N56eCmhPaP+7uTiLqq6UL3RnQQRwH6CFXxYFr9N4ZPNMXOMHF2IcW2JfWL?=
 =?us-ascii?Q?1i3xZ4P5d7AUFifD6YZlrh5sbdYINkZUD2yriPiPl4JCTpPUsuu/s61C8O61?=
 =?us-ascii?Q?0Kc+f1dN4TkAckChsZOrzZS2QqAMHWJqf3tedKF+2BGC/4+63alAISr/P2Uc?=
 =?us-ascii?Q?JGN2PsBDzDgG6tCeBge0IJvPw7OlVNyHoiCwo78toeIubdqbDk5+5NzSW2Tc?=
 =?us-ascii?Q?q4MZBXfOHUPycqdy1DKNzjlpJQOl7vAHD19kHFH0?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf6677f7-223b-459f-17c6-08da74059a0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2022 21:34:23.4398 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OR7Qv+b0VgDt3h02ynzdAkcRytEV6bvZIkfXQIxOT/GByWFgUsyrwt47oCc0A5xedAyQpAnRWb/qE46tqeZFz2eBh24U7otZBDtEr1H//B0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6176
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659389666; x=1690925666;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B4l3yyFZKQ3KKdw5Q94+6aUJ0nEpYj5XpZ+JZ5KLg+Q=;
 b=GO+86xYSHGirWaJ2JUNJKnIDH6rpsLlZvO850JLCNRGkDw4L8lV5i1bB
 P/BJSBYwuTPwck7TzwBSJYvnngAiBAINLERrYq/1Za6kpDduE9C76+sXm
 gMzvg9QiqlJzudfsenGKkNhIuMC9WnG2w8lEi6FXrm6b24BfrRZq6shfM
 /rACvPIfiHXqb4gWe2vUBf8FhNOAB68oCR62jsXNGw+uR0NDQfiL+U8DD
 9dNliSD/8R3x2xjt/8vcRJ4u2sDZDPRMaOcQUQEoWJIMavFK5umQj6vUc
 MsZymgFMUqi8rdA+1fR2fZRoLaOqGU3ExkweUpyv/oysP9hYZVLmLZfSx
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GO+86xYS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] Use ixgbe_ptp_reset on
 linkup/linkdown for X550
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
Cc: "spayne@aurora.tech" <spayne@aurora.tech>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "alison@she-devel.com" <alison@she-devel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: achaiken@aurora.tech <achaiken@aurora.tech>
> Sent: Monday, August 01, 2022 6:38 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> richardcochran@gmail.com
> Cc: spayne@aurora.tech; achaiken@aurora.tech; alison@she-devel.com;
> netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> Subject: [PATCH] Use ixgbe_ptp_reset on linkup/linkdown for X550
> 
> From: Steve Payne <spayne@aurora.tech>
> 
> For an unknown reason, when `ixgbe_ptp_start_cyclecounter` is called
> from `ixgbe_watchdog_link_is_down` the PHC on the NIC jumps backward
> by a seemingly inconsistent amount, which causes discontinuities in
> time synchronization. Explicitly reset the NIC's PHC to
> `CLOCK_REALTIME` whenever the NIC goes up or down by calling
> `ixgbe_ptp_reset` instead of the bare `ixgbe_ptp_start_cyclecounter`.
> 
> Signed-off-by: Steve Payne <spayne@aurora.tech>
> Signed-off-by: Alison Chaiken <achaiken@aurora.tech>
> 

Resetting PTP could be a problem if the clock was not being synchronized with the kernel CLOCK_REALTIME, and does result in some loss of timer precision either way due to the delays involved with setting the time.

Do you have an example of the clock jump? How much is it? How often is it? Every time? More information would help in order to debug what is going wrong here.

Thanks,
Jake

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 750b02bb2fdc2..ab1ec076fa75f 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -7462,7 +7462,7 @@ static void ixgbe_watchdog_link_is_up(struct
> ixgbe_adapter *adapter)
>  	adapter->last_rx_ptp_check = jiffies;
> 
>  	if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
> -		ixgbe_ptp_start_cyclecounter(adapter);
> +		ixgbe_ptp_reset(adapter);
> 
>  	switch (link_speed) {
>  	case IXGBE_LINK_SPEED_10GB_FULL:
> @@ -7527,7 +7527,7 @@ static void ixgbe_watchdog_link_is_down(struct
> ixgbe_adapter *adapter)
>  		adapter->flags2 |= IXGBE_FLAG2_SEARCH_FOR_SFP;
> 
>  	if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
> -		ixgbe_ptp_start_cyclecounter(adapter);
> +		ixgbe_ptp_reset(adapter);
> 
>  	e_info(drv, "NIC Link is Down\n");
>  	netif_carrier_off(netdev);
> --
> 2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
