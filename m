Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9846559A2CC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Aug 2022 19:11:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16A046121C;
	Fri, 19 Aug 2022 17:11:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16A046121C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660929118;
	bh=/+b9LLKtSsOmgduJrsajzr5sIZ3B5TwEIgDYtXTBSow=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yRCl2hj6m2hPLpNyYKQL/mov9i5FDEWZ9NIL1npYsmJaOFhnOTxzeeqTB6cZE0n+T
	 wDePtQX5YBUxcwoFYLk5s1FEZyi8Tstb/hDv+pVs2ix0eFa8KcfIh0GZYnnblmoeVP
	 QQWUTb1nFjIT7kevNtw83VNL2SdzKsCHeDjrgX7SpS4j1Osolnh8JH8HcMSgkYirXL
	 FII9z0kn6dyvPdhaTlj1lWNFKxvKSl3ZSpatKAvK2ex0+cwuFkyJEv2T+EZLWqLXR2
	 eQv2p5sua4UO2EHJGKheMdeA7LFd0gUQlJKy/F4pGsVqwCyrpEWc0dMdg4mKdN4/UZ
	 EL/QDOPyqoedQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id An6OayrcpUfk; Fri, 19 Aug 2022 17:11:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06B4D60E26;
	Fri, 19 Aug 2022 17:11:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06B4D60E26
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F3FF1BF366
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 17:11:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 08349842EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 17:11:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 08349842EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NRu6N6_i6pTi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Aug 2022 17:11:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 450B6842E7
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 450B6842E7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Aug 2022 17:11:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10444"; a="357041110"
X-IronPort-AV: E=Sophos;i="5.93,248,1654585200"; d="scan'208";a="357041110"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 10:11:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,248,1654585200"; d="scan'208";a="936288480"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 19 Aug 2022 10:11:50 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 10:11:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 19 Aug 2022 10:11:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 19 Aug 2022 10:11:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gPdc6Ax+B7TKvui2iZBqJJg8QnAPs9sdCudMnSfYvVTa1EOZ9rPUBJQ8Dg2xZDMAlrbt6jeTT3xtJ6bz1HtdPR+UxHPg9Q04AUMIQ0xZ0zLObqlo0qAlZSVuMjonomLV7uG1E8RmAUKjOH3wDBpgA0LIl+SXfnfUMDeGjC3JocjI+jqvFGOgG7DovwEDM4BUQhx0n4d942qqAcB8DBo15zjDnJ5vY28QT5GFS8AC4EF/xt6Ezzy53SrXlJcaxL+/fFyqeWOiqGAIo9FrNnkTjWquDITgaTWDztvoN88NUbgg1nOID6YUB7a5XJpCq7HrqfkEl2CRzBSGDn7ZFWn5vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FqZC9URHvPyEA3HSg4rtWuu33eMvsAc8cvCTVJpXOu0=;
 b=j+oMOe1ctAgy7AEHH65Id3VxuXrAd2AyksZgufE9ACFQAy98+P4H7Kzz59m97hxxNYdR6kT6KPCtuLvGkzT8S9++G9Ek7N826kgzftL2QTj5Dd0mNhpRo3l5F56HadvKhb6ds2TEvdFQupNgeUQ8XclBDiGzIDsRwoML8FP9BhfOT2hDtw3txHI/113niE+W5NRRZYqprxC5KdUndU76uKZtl4L0Vsskq7SOcEcr6YYpg3jDZ8DFAoKSQSgWjrPJvYeQeTnwSdyvP7ERLG33mQLf6AOlAFroXOtonAiFMN5Erp0xEeSg5AzzcAfUrCLMqv/rSp/3V7K4Go2R+HtXVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MN2PR11MB4048.namprd11.prod.outlook.com (2603:10b6:208:153::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Fri, 19 Aug
 2022 17:11:47 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5546.018; Fri, 19 Aug 2022
 17:11:47 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 2/3] ice: Get DCBX config
 from LLDP MIB change event
Thread-Index: AQHYrj5Mg9MOvj/GUUSlwr9+tNTdPa22gOqQ
Date: Fri, 19 Aug 2022 17:11:47 +0000
Message-ID: <BYAPR11MB33679854BEC600BA91124EB9FC6C9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220812112422.1083684-1-anatolii.gerasymenko@intel.com>
 <20220812112422.1083684-3-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220812112422.1083684-3-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ffd10cc-4f3d-4190-a3b0-08da8205e629
x-ms-traffictypediagnostic: MN2PR11MB4048:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HcssqPcPuFVG/cxLZhyr47B0XgN1ydJBI6X686GVDcXnj6uZP/eh4DSEVOun1izIOiO2YLOHUHLoA3cqk/LLvw9eCDLRuLljUgCzmpm9QpPbA/f8CLz83hgQI2kUTtpptP7JE5zpLSJoYZ3rYFmKa2R4Qc01KzcheVwP3nIV8MGlzcjzJi1dA16sib0fxudNC8Fv5K3EGi1mXULKkTiSV+L+QZmj4hfO8hQ0oRRH00vNTYQe/42fnnsRlK3V3jtmLcs+JijjxPE/3j1gkgmhAl+P2s3/eqct6uINVGb9q1eR6jA1INyipfWMgyTzYeMzr19L8v5QkldPg68xRSxveBmyono7lewtkReHUoWRBDo6U+YjRT/ZNjMc3ti7/hAOT7tnFMTdMP01NZjXYyKhZs/xQtEIeFZM1PtaOqyeNOZ0d6jiP4wR+FTci9paMaQ3W2MgfJ+iFAaUDbenrMWSYKe6AJ/Ue+HegF8cu8rDzpW+8WS//ONj5EEfQx0VK4aRNiMmGnR+lsRLEmk31kS70lyJPtI2g4QmrzJTA1/Q5Xbk9x8mswnECi3eUAizUheSMyiR2SPPQ6XGMlYQwX8ttV6T+k2LZWZxvDRqey8YXEuAfqcrfHfSHPcddkuunS/jQqYu10LyHPFdqSy0ULlH/LyBWKt/ngid1lb5zXAUc5axDfB2f80U7qhPt0uHHYXIrv5a1RIkDDorsj0NLRDH9Aj+VHqcPUTD3D1PQ/OccJtE/jZ0h1guRiSmQRpG8E6zCbtxh8HGDaWYkwRw55bA5g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(346002)(39860400002)(366004)(396003)(86362001)(478600001)(71200400001)(55016003)(2906002)(33656002)(110136005)(38070700005)(107886003)(316002)(41300700001)(82960400001)(7696005)(53546011)(55236004)(26005)(186003)(9686003)(52536014)(6506007)(5660300002)(4326008)(8676002)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(4744005)(8936002)(122000001)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q4HWKOrC228RrQ9KmF7auyGUxxNyg6xrh4mFl6Bl9z3KgYmSDUZcEc1XWD3J?=
 =?us-ascii?Q?T6ApugrQosx1H7OPxRcM/E64ltpsq62/EOW4BIXLTpEDWLxrGTBUCMo03FgO?=
 =?us-ascii?Q?O5sIIY7yVOhXsCuYTgI/jTMA6VE/UKmw76HjzlxsoQx/VxWrWm7GdlNQnB6T?=
 =?us-ascii?Q?S6u3pGdFg5tEAZvOL3WpEIPCJaLhrrVcsmdFntQmVVYop3mX4ZwvR7DRyPmi?=
 =?us-ascii?Q?YWgxOFsUaQMtnvrLIRc7SDpiO68Gi5K66aC/hpI066GdFhjORDR/NqkWk2lg?=
 =?us-ascii?Q?WnltFVxU9sZTWb7WQbOSkFFzUZ411zjwoZQfaxatV1s2yzHO9ASWSqaWU3dx?=
 =?us-ascii?Q?W0QNaqqSJXbZXqm4gicpmD7EurIr5HpjVXrdOygAc1APX+KXc97X6QoRYMgd?=
 =?us-ascii?Q?2tFZnlU4TMD/9NZK0bEOgnnMoBwH6MKVZgri00W/O/3gIImCdA/lXe4ybpN5?=
 =?us-ascii?Q?ON5nhv4eVBKrNDHQ3F7d6ArDFSUAMpicqYSNlf7BSlkbQoYiRGk2veHBLIPF?=
 =?us-ascii?Q?kXbf2CjikP2aty82eEXEJTjeCbyL5sp8aHqup1ZNtSDa3FsFDKBlJGVaSIVK?=
 =?us-ascii?Q?7bDi7VhP8/98o5f7ibYa0ZKxexlTGrHHxQDs+D8+kiNQCMWk9kAPaY/Hs/6/?=
 =?us-ascii?Q?6lhKmL6HXI2JQdgstTrG01nfi92B7vjBIZW0CuOMJlNRr/tWAXQy6LD580+C?=
 =?us-ascii?Q?XBCt6/ePAC5fLbCFlS1egiAmvmtlGHqT2RXINU4pO66EGqAtrwGBmEMGqCpL?=
 =?us-ascii?Q?kyqZliocBoxBF5nC0htTCGy8D2aiLiTwbj9sBIt70ABf2LQKOYygnDrXMFE5?=
 =?us-ascii?Q?8VqC/+xbHvoxiZ2aRbVZg6SDS6FFDAWzmQXp/mKGVI4Ct0PhrU0qkYUSf0CI?=
 =?us-ascii?Q?ez7TQxz+Lbw4gsI669lBsrOk9q7GKpgAvm34k8Y8koE5G/rsPCMvS9loEETQ?=
 =?us-ascii?Q?mJ15ZhmyYD3NOk7c5K19RvMyzHNqKDBbbCKXgmCsv/L7TsksSTbX+OADoCh9?=
 =?us-ascii?Q?pnBMC21NLYjQeRnkKwIhHaK69xqHTboaP36lv2+yyUeojh7q65C6kaqsWCiV?=
 =?us-ascii?Q?wO7xku3GCLfW2zxSJsJ9dcjgmCva5SxklnvXmajJDseI1DYIajhwhjUOdL0Z?=
 =?us-ascii?Q?u6Vqg1WQg03TuPHOJJFxx7epsMQRVFzx+WOOyLdawGRJHKfIBZSrI8dj0/H1?=
 =?us-ascii?Q?ieJT/blMRlIkh39gKKKHogApbSorEN57RGvVz792UhOPI6ehg1lZETVMKZJY?=
 =?us-ascii?Q?cHt9+BOcMGA9ADa4MDHhaS4ZOb8rIsRUpWHgVhRyZUH1AJWfufXiv8X6m60M?=
 =?us-ascii?Q?TeqnGPoh0kN2SzoFGiUDYtQigRZ5104RQm8o8w3GZYGNaeDcBilhBuPRfVcA?=
 =?us-ascii?Q?u4G648L8Uj4jcZg2CsEhb/pxKrQv+3Wq5UYV9Twb5CJ0iMGamqchwXUS5x7g?=
 =?us-ascii?Q?52tKVpkW5JoT1MpAHnotNcmWq+GpWfR3djZWOu8O/aG8G8Y6XSJZ1C4RJd3Y?=
 =?us-ascii?Q?B6upxGnd6RhHjnOmObsVF+V8zDu7ZBPywsv4zdJ6Cmd6H5bAd33EuaAkCxzd?=
 =?us-ascii?Q?sz1ZgAaJnj0CzPadiAaC/xAtEmXTQGGqx1a4DIyJ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ffd10cc-4f3d-4190-a3b0-08da8205e629
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2022 17:11:47.3969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1UAu1fJ6T/zH1a0dD+Mh6EG7lg0ESfACpynvpjh1uZbqFN2Hw6hLAmD97fEmIwWQurYR2+NziUsjxg2nA5IVHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4048
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660929111; x=1692465111;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pgBSWHwaOvlTP8abnCqgvjA+Um/DdrLZq81xXBTJXhU=;
 b=MF1N/4V4XeTiFDJU+cvqFu/S3DVntzBunce/eJAgqcQtw824DaqXbd/9
 6U8kpFzVheZchXIi3TomrViBfDzS8k2uN0VM7k6uENUzFMeGeUdBeygbJ
 R4NuZs9lEVDUD4gkfqTIQ/fOEdroBhQRhORcm26IXXPjp7XS7u/Q4Cp39
 of39jo2xBJj/EASn9bhiiBnaMmLaTO+P4Juj2gbMB3sq2gNdvCkl7n1St
 IHK7N21ItAiQcDyKM6IJ5CB4Df9H6MBFqD+C6xnFkbyTHShb2FVCZ/d/5
 QXh7rZ0MMUbk6i8wkrlDWKK1FzhyrHDKAXFVPcxoMOrhaBrIqs0L0qa3v
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MF1N/4V4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/3] ice: Get DCBX config
 from LLDP MIB change event
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
Cc: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Friday, August 12, 2022 4:54 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3 2/3] ice: Get DCBX config from
> LLDP MIB change event
> 
> LLDP MIB Change Event (opcode 0x0A01) already contains MIB, which has
> been changed. Add ice_dcb_process_lldp_set_mib_change() function,
> which will set local/remote DCBX config from LLDP MIB Change Event's
> buffer.
> 
> This will save redundant Get LLDP MIB (opcode 0x0A00) AQ calls.
> 
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb.c     | 36 ++++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_dcb.h     |  2 ++
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 30 +++++-----------
>  3 files changed, 46 insertions(+), 22 deletions(-)
> 

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
