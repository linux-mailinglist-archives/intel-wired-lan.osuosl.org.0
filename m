Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF12F7B9BC2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Oct 2023 10:16:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5547E42239;
	Thu,  5 Oct 2023 08:16:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5547E42239
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696493810;
	bh=gRetEJCYtkDTYYxtnTzoBLpKDoUIGKXR0K/2bO/AhVs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=410ten2MlqzE54Be01ejsZhXx61NRDvzesclZWyWNBngdILr0UKficS0iz17bRiol
	 OI3lupxjn74fK+nbKdS8k89Galcz+gBRHC2qM0gUNNiXWNLVloDbSYleLZ7Jc0Xj4w
	 arSOYBSnbv8JiYWBAP7bRo4W/iDSdcESKSVR5uBaS0DSOI0PW3B1At6bsDPkGylRU8
	 eUPEdFULAMLyJf6+PIZqeYpPCz7eFSXuFqxPdTThZvLPI26kEmsAoTUo2Q8yz73nml
	 +F5TKUHaEKmlPlvF1qnr3sNg009X+FyYMjixtJWGVYohv+V/atgaZwUxljEitPAKfo
	 rJTTjjzeWzY6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IZMFjGETmknp; Thu,  5 Oct 2023 08:16:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC31942206;
	Thu,  5 Oct 2023 08:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC31942206
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03B3F1BF399
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 08:16:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CEA944154A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 08:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEA944154A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PTLzJAvsFsGa for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Oct 2023 08:16:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6DD4A408BC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Oct 2023 08:16:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DD4A408BC
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="414405915"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="414405915"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 01:16:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="822024978"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="822024978"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 01:16:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 01:16:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 01:16:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 01:16:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 01:16:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W4sg6O5NR/8cPESwSCb1qSRyDCHHay1KLx76o15XcVCiHcSD7qShi/+a8zX9fUST757iB6MMOIF4De4NhyhKvjJc2VvdDHKemCeLPcU7bEZKr/tkws3OMPxxH9jmPd7UxYW1KOEe5+m5b25Mz5gb0/gP/XIfALW7DZnLRbhSDJKLy8/jD9zXFGFM2NRANmRA4UaZ45IZHuk3352fbM6aTCK6LrnSPV+134qoUgRxO3ToY64WnAnHma+4L3KAjG+4IAxaOfkEtr1azNTs61e4lHgWzXfM9Rfe7NLAIcEUOWIb4UfxhTxaFwcXRoHJcVKKzHSF36gE94PanTnNZPT1/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yBl/aGd5ug2iw0oH1B8g4oFfhpR9138I2benpysXIfU=;
 b=ZD7lzqZ/FprU6vgtLWgMV+OgOPVS3+K2k0wArHfa418gJ97cpIoEwLtWoCUL09ldBNjPWoR7AV1ZoLCIxAXO1oeeF9zVme9zTU9QgRM5iYYY6mvJars3EtXxiFAkeryPORndknUBs6yEuM0EVrurc7tfjFRN7/MJjgpiJ/sZCvJ2HIcDNdDKaKDEvRuUE2ez0qblpGZLPUDiIghmbJ+883ExnrHLCWCxThBbAqoK5ORpsX4Ya+20LzwH88uBQqNP2y5b9YnumOkYZ7qSMxNPAUQ+4zcO5d5YMjvmbg5woHzeVc9tQyy+Czye+Yep3nc+ma+M9/kYH+EAAPQx3wBdUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA1PR11MB8473.namprd11.prod.outlook.com (2603:10b6:806:3a7::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Thu, 5 Oct
 2023 08:16:37 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::e372:f873:de53:dfa8%7]) with mapi id 15.20.6838.024; Thu, 5 Oct 2023
 08:16:37 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 6/9] i40e: Move memory
 allocation structures to i40e_alloc.h
Thread-Index: AQHZ8R1IsPB8YEPoZEaio+eH8rfKNrA65fzg
Date: Thu, 5 Oct 2023 08:16:37 +0000
Message-ID: <BL0PR11MB31227ECE9F1CFEF245F407D7BDCAA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230927083135.3237206-1-ivecera@redhat.com>
 <20230927083135.3237206-7-ivecera@redhat.com>
In-Reply-To: <20230927083135.3237206-7-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA1PR11MB8473:EE_
x-ms-office365-filtering-correlation-id: 12ef3c91-cf46-4e0f-d75c-08dbc57b654c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3ijb9wE4nzq14AnVksvSmUyIAVkA4ECgC7ALqQNV8s/CAlj5PKt8ifmTtm3WXVU2p1flLs2tbfoqCWQS0qSALuMlGYT550NDpGdmUs6m8dIM8tbRp4A047U8LhbpjBCOxgbNDpPAKtDtHu9ia51pT7TfnaB2NPUAKrqQmRwa49oE4ZWMbwlRznWxg+SpHpmFtB1RVwKC+OqxJu32gKsFpAM1XeU/+28X2cat4xEeyPEyQ7gbn9g2I5mwtr4VGZkQPntTv3SIPZudR8qENkTU2yoQVc3PpbnLjSG5YzLShkzpjkb0bQ53Q2hG6uKDV1+PpQ4+6Tnjzux6aHGE8spCHjFOD+X1Bj3qzK/PjlJzY9ap4XQItA8HwMgv8GFfoEG/+ElHLQja5RBlJWlbR3hoJKAyWyJELGcbLXxT/qfY4b8F/tcFoHwQEc7aDVi7EsyziMd3+lwphHWM+7Rzpu7BN5AKYeXmtqm5Rj6EAE0eiSwhVhaJvxAzTL6RyqRQQ5zJE6PyebuyXS2taymbI17VL5+FNhqWSxwBBSVYkGoTE1y/c+fwZwL8uh06N8dmBhA6zLZBmDecQyxqi5Pc5kJHskJNMJre/sRzGbM5cxjrvWKJDuqsEojeKSSC3GloYorB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(376002)(39860400002)(136003)(230922051799003)(451199024)(1800799009)(64100799003)(186009)(66446008)(53546011)(110136005)(54906003)(86362001)(66556008)(66946007)(76116006)(66476007)(4326008)(41300700001)(4744005)(33656002)(38100700002)(2906002)(8936002)(52536014)(8676002)(38070700005)(122000001)(5660300002)(83380400001)(82960400001)(316002)(26005)(55016003)(64756008)(9686003)(71200400001)(6506007)(7696005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6PzTymHjBO66XcFY6b9QksSFlmtkudsr4zzD7GxQll70SIGBMwQkJ6S6Pe2R?=
 =?us-ascii?Q?5N+KTJxEFK9vhpD4woRP+b5hIorrVQTaoY94YAk0WqIB/0Fji+ZKHKq3exXQ?=
 =?us-ascii?Q?zV1vl0OldD1/KXvfaVKX4DwZguco5TWuZbXR9GagWr64pDYQ0N1gjUEZYi6p?=
 =?us-ascii?Q?xVtOkdzixyTtYeFos6pollZQtw4nOInA0qOjblJgv6QjZrNU/pzXw/i8mgqZ?=
 =?us-ascii?Q?cNYxLfva8nYJEAs4N6K/5GcwC1FlPTCZ6NG/Stf6UH5hJUMaGrZGFn/Pe3et?=
 =?us-ascii?Q?c6ldjnToGBsQh4+GcEprM9wCYQuG5hXbykbFEWTJS5DNF3dZI+mFtYGjdn2V?=
 =?us-ascii?Q?mWD6Mmv/fV4AS1D7ZIpG5TUAx5H9DX/EnMlzH90BI5KIiJ23fPKcc/DO2DBP?=
 =?us-ascii?Q?vYg+aM20lSq7NEqzgUlLigp6Kg04q4dX5CsE1B6ptGCaQqDvLWkr/cTZydT7?=
 =?us-ascii?Q?GL88MRWpiqmJrEmWW+junrjo8H4SOTKbO0UpBgBFbpJ6pZB0APMSJwXZKZ9b?=
 =?us-ascii?Q?kCmJ+pR/P/ggdrDBfxbltUojv16tYHz4eYUArj2ZG0ibefeLEYyRaDC4iI02?=
 =?us-ascii?Q?pfP/n+nSTD0ManEZSZVEXBDsivBDZbHzIwFeMe3XeDESDSxAH9fph/BuzJUn?=
 =?us-ascii?Q?VNgun1oatco+ISVBbodFrDU50/mhcxKwVlTPJPYRr1lt87Ko/UnGXDnK1GhU?=
 =?us-ascii?Q?FEGT8SiVVsIJmGXu2YpHARqf4z0WdO5wanC6EmQiKIj2bLslt6CCJJkQxRyn?=
 =?us-ascii?Q?Rz6tvgsn1SWpVKOQnNKluIX2fajzwCn8p6yZDXE9cc+x6ygxZpyuwwUXCH4J?=
 =?us-ascii?Q?LeT4TyBcYBzcavkwVODr0G2zXqg9gAYQ0//SDamISGNdmczyCUXycS9a7G8Z?=
 =?us-ascii?Q?1jON9YcROeqlczCKXFPaePtYDNzyao2teFb6q+Thxh8px069Li7Z2EFmMC0U?=
 =?us-ascii?Q?hVM4y4iyGSRcLaTO7iLO1SW0DMmghcyg2fBDaJyX0MD/6YpwHmT4iC9MLYJ0?=
 =?us-ascii?Q?gIWtVIrVZSRTWmlnFX0RwSYIAs5JozOjVf+mObOKyps8HauDW0TcBrJqnPfs?=
 =?us-ascii?Q?RY784IT/HY2eP1ZmxZ3mLNo1lgLbUBpN66+pb4wquGesti5G5uBjg0MP0WBo?=
 =?us-ascii?Q?0rfubHj/SsBfkeyFnqu1cGuKEN8gWUOsaZ0XRuPBe92NBM9qjbJ2REjv7K0V?=
 =?us-ascii?Q?rlrVhwkSu5EaGVq3lgA0zM29EkWqvkXXSOTV6DvwyDDBeA20xe2QKSC9bSzQ?=
 =?us-ascii?Q?CEY2rHLUcRbrJ7FPYRcHTRTspRDXva16RWISjCzfI+TDTDiUcze6ubplrjx7?=
 =?us-ascii?Q?WoqcZgZwvwQLZQYMz6qtUen/+7Z8KzvqI2r8Bvsor4bxJ32VVWp+wwa084cb?=
 =?us-ascii?Q?ta/sAO2Dnv0shPl8DkC3QwhQDrzrutZr6gPUJQM9xX1Fh1Hc2Xbsk6Xl6Nwh?=
 =?us-ascii?Q?5LPvuBqK1qy+9ci/Ts3+poIcfQ7g9LnkfprjUSXK9H/A9HKL5rvnlbCrmb/7?=
 =?us-ascii?Q?vxX666Wqbh+kk7Le9OEk3y3eBIo3ImhsNWTYxzkisN63JPfU75m1mbwWDy/t?=
 =?us-ascii?Q?6F6njbmdxALQZnLt6NPeDXx/jjwr4HFK8Mni2sj5uKBYnhw+SvlJFqnIBoNV?=
 =?us-ascii?Q?CQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12ef3c91-cf46-4e0f-d75c-08dbc57b654c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2023 08:16:37.3860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zo/CUGF5fWLw0bWs6h7/InY7n1YUgkVkBphvWYl8Vym/GGwIOqRvmEJe/zP02mrvHYpHThRAq98XdC4CMtJA0gHXm4jqSRQ0I621C3ncJaX96aw9MKPIbr7lC0ydKp0A
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8473
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696493802; x=1728029802;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ijKwkV0RnNAwSyxASKwLUbt2lv1lLEmI/hp2/iKAZgU=;
 b=It7xjZh2JqBwVxAvqRdPYkc5n7PCMR+ZWfid2EpzwxteUV0I76ytcjg9
 Yj8u3Gq4tJ+GfFDhEl12IpqsBowxo3AKTh+V1BCZXtq81IVQN+vdGvKDR
 JvoGULUM+/y8eaYTYcqUnX44wHQ8KLMa9Z1oBQCgCQUpDyuZfOikG5BAX
 kIXBfnIKqMfiee+nnP0shU8WnBqeobbu6q52rZCha6+adGBdz32dFWdvU
 CxkFy3sIaSypPqaj86KL5t7KKkbd+pkBqvE6qdmnstvu2P/Ui79XQlBh9
 CHBwUdMofvB+2IA0Ya3YbeQ6Vg4OVEtWqV8bzRkO9zT2a3apXg7dAvntp
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=It7xjZh2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 6/9] i40e: Move memory
 allocation structures to i40e_alloc.h
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen, 
 Anthony L" <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Wednesday, September 27, 2023 2:02 PM
> To: netdev@vger.kernel.org
> Cc: edumazet@google.com; intel-wired-lan@lists.osuosl.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; linux-kernel@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; kuba@kernel.org; pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH net-next v2 6/9] i40e: Move memory allocation structures to i40e_alloc.h
>
> Structures i40e_dma_mem & i40e_virt_mem are defined i40e_osdep.h while
> memory allocation functions that use them are declared in i40e_alloc.h
> Move them there.
>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq.h |  1 +
>  drivers/net/ethernet/intel/i40e/i40e_alloc.h  | 14 ++++++++++++++
>  drivers/net/ethernet/intel/i40e/i40e_osdep.h  | 12 ------------
>  3 files changed, 15 insertions(+), 12 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
