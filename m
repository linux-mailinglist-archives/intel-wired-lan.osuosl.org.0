Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B15878841D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 11:56:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69AE383A93;
	Fri, 25 Aug 2023 09:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69AE383A93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692957393;
	bh=bXTHH9q7gST6nFO/r9UbA/VVWD37+ViXQ65DLrPvYGk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=O1BCpbyg3ofctHu6vvWYka+Suu5k0cjtSrMl3maNixthBP45RDKf46V2jSS84R/Wp
	 ki0qiW60EBIDtm23RRD7fpDaC4h/ws17WznikeLrHK1reHD5HXEHYU6d3M8irDRHMQ
	 q8vY+ilcXRssz6c34eujiPXqXzhaq0UflO9vXa7RkAHtDWArv3iXlQxSw29va2Qysn
	 vBUEcyjUifZ6ZyK2KA7J9Ffp4OF3mLX2opZ31gPQKluhhy4RO+fPadBfIpEekAHSAh
	 Eva/pg45FDJ+iKkDDJu/MVn+dvq1MPg7nugNKVLej8lBq1u2HYGVkgJeJRFPsR3hMp
	 feJvLHbzKSYbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MJScVZx_SbSK; Fri, 25 Aug 2023 09:56:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9BB483A8E;
	Fri, 25 Aug 2023 09:56:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9BB483A8E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 437B41BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 09:56:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23FA061009
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 09:56:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23FA061009
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FZLPMMkVtK-a for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 09:56:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0C8B260F79
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 09:56:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C8B260F79
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="372076432"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="372076432"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 02:56:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="687253385"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="687253385"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 25 Aug 2023 02:56:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 02:56:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 02:56:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 02:56:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 02:56:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RXDUZe9NhW/CSohPSySeLC741Xb6+Ii8VFCe/lAG9UPxovlOCAnE/Bq5W6qwG35GAVEJabrHfUioR1o2XApIvWMbCBP4Yal5C/UCV2Vs0C/5tipwyJ5cDHxJtJLszE9TxEstTMnPH+SarWJ7eUuP4httTVwj4vJO8y98M7DcB0C747ZAW+zlFC9WCUxmKkY+jJCOHZ5ySjpUzc9nLx2KcegdLZdYAU8Gr32LbhjQ61DIVoxJGPTZ8ReGGWvfoUAGyGsIkWcAYrvCZbqDd/DXKxUN1X/UwCWF8CrYDez5vwnpXvS1/dyHr8TlEdB2MSc9AccuKQOWmXoCAOFnoGRG7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OcQEh7zXs8RXbtWrKyIuPCQU4Spg8jGUqfXyXtKoNew=;
 b=cfb/zmXqom5dcvZQk8yZcYMfoxOJ3HJNWVHvZj7a7+GYKF9zRTf0W3TxLVLTjiLDAEbU7qWpZiRN/rnKhJjHJhwGMkWIdMA6Td2lhiWOn47OGXYXRcypqi3fkbswIq75u1Umxbq7XPVyBlAYruMGOmX+VKKnNptgAEbB+NVlOCjIDAbsQeh9EL179PmyuxMKYfC6sUWqH9xGxJQBZ9FKzEjwlIEOl4qIBcKmFMql8HNIE5UDgY93qdc8Mk6QBwRulwWJWFwTLv4v/8cRik/mbO/BIQcLdU4Qs3wjbrzaLZ+nHqqHsUWeQW1+Kdb675D+IOb52isP4cV7CldBJEgQEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by DS0PR11MB7383.namprd11.prod.outlook.com (2603:10b6:8:134::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 09:56:16 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a6fa:cb0d:5e13:fc2d]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::a6fa:cb0d:5e13:fc2d%4]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 09:56:16 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v16 4/5] ice: add ability to
 read FW log data and configure the number of log buffers
Thread-Index: AQHZ1hBlql4JnCuInU6RQnT9Ea/Rkq/6x6jQ
Date: Fri, 25 Aug 2023 09:56:16 +0000
Message-ID: <BL0PR11MB3122A50A70487A70E6AC268CBDE3A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230823222152.106-1-paul.m.stillwell.jr@intel.com>
 <20230823222152.106-5-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230823222152.106-5-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|DS0PR11MB7383:EE_
x-ms-office365-filtering-correlation-id: f3529812-82dd-43b4-85ba-08dba551862f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ALefnkXmUC21MKsqoN4aUqQnqNxHxAkDIQU0VlCnFr3sSDbTtoVhTZy3HUWBA3AEa5uQFKeo+TnStXbAjU+1yHpsHfdNVqbFG1fkfwwU3rwAaHeUqppt7T8PNTTvpniYLakbX9Hla9K0tiRCnrVFjBUmiAlJTJQseZkcTLrJxrQMF0ncmYNaf1kMQhLfa+OPZn+Vm2BR5ai622wkNDY8qLaJq6o/GGjrUfWal3bMmU1iiumbDCQtkJYq3Tvdgij6dJ/hDfYOKwbK91pu7pcQ5HFGBmuyVlCU6ISFwCSbNkOQBo5I62CGGfFOUTgbz90Ne9VRTBJngApaGVxFypb/ip71+WaHUTkvekW7RsHMuW5d1bNerSgmNd7waWtsjsiZPGuFmeVHwGmTaSESSwaicttJyTOLwt02Yukg8oymY5JCztFrKUjKdaKCyFnQcSjf1yPGJfk79SHBWpaa2eV55WmuZmlX+BVmoO6XlH9DzBYJCIGyGvVF90oaYqttgk6mlrH5IqBr8vymL7TGC+SPQDg+OMGxjS4LEuGPeZQQ9Nqvseh4M9SBcLD9LTV4kBUTi6weGoLFZYoYrvdx/XeOWgfKXiqy0rbLI1aXaxG2oIkEM7acWOnPv+pM33U5nfNr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(39860400002)(346002)(136003)(366004)(1800799009)(186009)(451199024)(52536014)(5660300002)(8676002)(8936002)(83380400001)(33656002)(55016003)(26005)(71200400001)(38100700002)(38070700005)(82960400001)(122000001)(66476007)(66556008)(76116006)(7696005)(64756008)(66446008)(66946007)(316002)(110136005)(478600001)(9686003)(53546011)(41300700001)(2906002)(6506007)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lYflrRhQQRjPADMU1WmsFD8Zkl278ryU1WyvhvAWGh6ea4kh4BhiAIwrryl6?=
 =?us-ascii?Q?vbtremuTPMYVHV1TzbdskkTzlBNyMZ+CFurfurBFhknCINen2/yhfM/d/tJD?=
 =?us-ascii?Q?aZIei3TxCeGlnI4FSgTSFQe9EeuVVp5iSLvSmvlNR4nzCuVfGNo/5DJCuFCJ?=
 =?us-ascii?Q?ohzDvLex01UwHimIdKCJ3+9SUY6rW7n4tSRcNCgh37yuSBBG2HAi4ZjKQHL2?=
 =?us-ascii?Q?h5OGn3aM4bwJVPjPAqtXqI6mu8ycbLsi8XtuK2IY8lBsQ2NtJajFdTze1jR4?=
 =?us-ascii?Q?jCKUTd2C+TIuUzqgbT+ygWr+bSizIteyH2pFy4XMXkLz6mF5ANDb8UICtLTJ?=
 =?us-ascii?Q?bRn7erKcJK9LuOGrf0m1t/7prgI6EvplsmHhGbUXnMoDXtUpv7hMhWgkVCDu?=
 =?us-ascii?Q?FALkQE9f7ladtskBE9trchwqsgHnC9iwFHMJEAPgd06MdTTtrLp0H24CC6Gm?=
 =?us-ascii?Q?d3fO5smLzk7KHASruqFmJsHdlsgVka2jGWdBvulGh63ysIqmOTQshiahuEVF?=
 =?us-ascii?Q?w+Et5xrHW1mh7+lqSjCG/5qD2DZsN4LEQzO9NgnCfem5f4/RQNBSgAWKs5bI?=
 =?us-ascii?Q?rpocCsTeKL/FW269Ky12eCBb1LVnbTsVafOaYr8UDprsP0NzBQFQlAVf2sG1?=
 =?us-ascii?Q?GchZo9rd9P0r12v5Tcv/bMWl7M8hwxFapRDogXPfSI8dkReS3ZPTyjN7U3EU?=
 =?us-ascii?Q?YmRW0GlkiyAzuImbL8YrRfQOVAnWJoFvTHAiDn3uZ0duEO7yLtpcMBEmBNtu?=
 =?us-ascii?Q?qdXbdmdEu3Aw8DiZDDZpssPTbvbWk7WYtjSfIaLFyXmvmWNINXcecnZUNYN7?=
 =?us-ascii?Q?Nj0Kb/fQARZ03KDtWDJ/yxNsgu9oKbgkiwpmloaiDnMY7EspEG4V74+fWkGd?=
 =?us-ascii?Q?NGOJ7lQw5Q/kfpZZjjmxdkeOqda06oh1nTA34bWhzqO7TpWgfOjEI3T40G0B?=
 =?us-ascii?Q?dbQuZ79DCfE8eZz3/phdGTK9/rgEkURtFImGRbTW+1+NBmJ006Jd7Doh6Cb7?=
 =?us-ascii?Q?xthHdI6MDY0fPOG+AGUua7icvAkcCKL0PCecYd+9HtXYHRdE72bUQ5kYCBV8?=
 =?us-ascii?Q?v5443CIwhslHCmJj08+jeIiXNSQOTENFv205SBThj5N2CySiW6epBIQb8Hqa?=
 =?us-ascii?Q?BTjF1e4J1MI2MlNGF4XuboA0lNaaJlvXv39T81KvVhwKT8Yl4gNJx25jiEmY?=
 =?us-ascii?Q?HP0YHGwFx8/2jqnuabzJz5RhrMknLsh/4CjIqxojMIXA9VExxjgdCIvXVeim?=
 =?us-ascii?Q?S91ox8jAyVrSev6/KKEQxenmCMQTgNhuzIC+6u69OWZswiIXY+mulvuo0LAQ?=
 =?us-ascii?Q?NZKcErUhsc0EPcozaAs/1+6wB3uPkXX8TU9UGCVOyjXU6Fr643nna+JDApbx?=
 =?us-ascii?Q?qVaunBeBhbvLsMSgIzwMmogUn1zfawBBUbao2Q1qY4sY0YLLByfHhTCVI+U1?=
 =?us-ascii?Q?4Ma7U2iVfoL0Df8aIBm74UPxDwLV7+EWrJPG8T/lDkC/F6PvJpc9jOZdI/rN?=
 =?us-ascii?Q?+XFc29xgZcvlz48CH6ju7r+NQiXyX8ed1futXUw+uxTc/pmkx9VWgtmUCiex?=
 =?us-ascii?Q?l38YB+L2ibe9qWtV6BtYWzrUhEBu7YxoiKY1mgh/biWGd6mwFNTYfVDev4cO?=
 =?us-ascii?Q?+Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3529812-82dd-43b4-85ba-08dba551862f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 09:56:16.4921 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ITiSVwa21aw7HXwrOj8MKQmlzvojU9SicW1GhXbUsi45JegRocpZBAnB4BopCIdAmM2OGqXvS9yVC/Hvh3JV++1/le3qG+eJERQNhoHxbUErXNzhCJ/oeUVFGAOJwlLf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7383
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692957385; x=1724493385;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kCtEvmQMqPnm9EL3IMgZjpukJ8ijDcMu4xwrzDQRzwA=;
 b=ka88J3Y2+iN5oDFb634fO39t/b81lV/MO1Sba/VCrkZipXoeC0Vv0kho
 p4OuPO9nwAWXTH63bGz0bZ6iP3npdAD2t8x+RL/A/z8wEX2UKjIMVeHoV
 KYkxwQyAOV9M7a8cPXRib5ZQZJijP+v6wuuJ20CJNK21y4cmXRC1kYQ5Y
 ppcH+MTENkxfvBP57bZdvGVAD0lc830zZRF/whO+KnXzynWnrejEDgLQp
 IC3wUwOkfT8CvhnEB0Xt1yEeA7pp6WLMpxZ3w57FFhpB7UOEs6rFk8Bx1
 uhqLJuyXVY7q7iaYpt6NBpSJlljC2zHqVZKpRgmaTYLrQFW2U+Dlnz1iw
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ka88J3Y2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v16 4/5] ice: add ability to
 read FW log data and configure the number of log buffers
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Thursday, August 24, 2023 3:52 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v16 4/5] ice: add ability to read FW log data and configure the number of log buffers
>
> Once logging is enabled the user should read the data from the 'data'
> file. The data is in the form of a binary blob that can be sent to Intel
> for decoding. To read the data use a command like:
>
> cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/data > log_data.bin
>
> If the user wants to clear the FW log data that has been stored in the
> driver then they can write a 0 to the 'data' file and that will clear
> the data.
>
> In addition to being able to read the data the user can configure how
> many buffers can be used to store the FW logs within the driver. This
> allows the user to increase/decrease the number of buffers used based on
> the users situation. The buffers are used as a ring so if the driver
> runs out of buffers then it will overwrite data. To change the number of
> buffers the user can write to the 'nr_buffs' file like this:
>
> echo 128 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/nr_buffs
>
> The value written to the file must be a power of 2 value between 1 (not
> recommended) and 512.
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v15->v16: none
> v14->v15: changed PAGE_SIZE to ICE_AQ_MAX_BUF_LEN
> v13->v14: fixed an issue where 0 was an accepted value to nr_buffs
> v12->v13:
> - moved 'enable' file addition to the correct patch
> - added comment to header file about inclusion of 0xFF33 command
> - added linux/vmalloc.h header file in ice_fwlog.c
> - removed NULL check before freeing ring->data
> v11->v12:
> - added fwlog/data file for reading and clearing data
> - added fwlog/nr_buffs to change the number of data buffers to store log
>   data in
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c  | 242 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 130 +++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |  20 ++
>  drivers/net/ethernet/intel/ice/ice_main.c     |  29 +++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  6 files changed, 423 insertions(+), 1 deletion(-)

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
