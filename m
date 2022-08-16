Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DCD595CC1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Aug 2022 15:06:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2F1140B1D;
	Tue, 16 Aug 2022 13:06:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2F1140B1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660655163;
	bh=uSh90m5zbmIXFekhN9lY3CGyM8+CPrWGEadmWbJMPEM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xiqv1T3vN0ZXlU2hecWmUFOevyaR2ir61lOy9XVLGjEvxIvYsYJ9eXKAqxSkzheJT
	 OcjUl4hhaqF4ZQ/6idAZlE/ZDi4waUmZrDI5iPTBOxUeb/U4vekU5JKl1vq9UzokLz
	 2Mo7nImmALq9ADqpv9YL93/jBXQs1vfy7DSzJjqLbzqqd9itFPuL1m6q8+o5reNLhw
	 XacupGPlAIYza7Nb3dkFegdnxkKTlgkgX9j7EeihTYA389hdSSqXyo3AJ9glhik5WF
	 toKbuOf09oqORQdvbVPQqtt6kHVOVJ7q4GhnpNwVqIHX1YM9Yz/p9KFslr8bd3imCd
	 1rkjb83mGwuag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CQ_26IVO8G1a; Tue, 16 Aug 2022 13:06:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1EA5403CA;
	Tue, 16 Aug 2022 13:06:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1EA5403CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1AC301BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 13:05:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E663040A6E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 13:05:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E663040A6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9U37ap95eQvN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Aug 2022 13:05:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE612403C4
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE612403C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 13:05:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="275266364"
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="275266364"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 06:05:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="733285907"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 16 Aug 2022 06:05:54 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 06:05:54 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 06:05:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 06:05:53 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 06:05:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SIg8ZchkOe9vH03kMLw5uaH3JuiQK4bkiYFfO9UEhTfHuqiw+cccEyEtJSBiUw+rmpvMfZixWXRIEape2LOn5gy6jYUw1uVBowFX2JNf+H5mMUExYSj/wYSZEJbSOXlMKnjYWIhddENJEkrE+3Wg4//7Uz/DdqMgqUshESJAn1iLDFl6zKO+WrwcfA09q4BsVEazjOeno5cpM9P8MulX8oAQH0Ac0aAnNoMgUZ9VHbHqBQvPIWXjFIo6RU/AWW+SlNVqys56eK8Y9ejKVvvqJWEnc2wm2GFL4t0/ctqXhzBcVggdf6MmnY7rpfb2JzXeh8MubpPnguyqiqhjA4j60Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hmwpUdXvlT4opjUNw+8YqipqMycqAv4yvOa2FCsguCk=;
 b=RZD08t5EZMeOm1KtEeSM1HzXG9N/2vZfgWNuK6tFpWc43a9Gv9Qcd6owjpxF6pYTPrKg8lyvlf6KbSANvkj3skbJNX6LflTVR8GeXsJGIBCllKmwU0q+41phLgBZ5xZctAjpTawx0wGQ90A9N/ZkrwGZ3vNzTSZr+ejsLNUnI9M1crzrOb3jjMAzCGo7Ec12JtaoGYx1I0WAZxL1RoYnwgSN82u+gXNcrcMG96mESpZsisM4+r0Vlb3TfcL7QuZz/shOpHHzhZ0knjHqJaXpjIMchuktUMlflFh0Sb1DPRCFH6xWZJCUGlJI2ZszQtcZOpzv6MAa8CXlHtqa8qfbxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SN7PR11MB6774.namprd11.prod.outlook.com (2603:10b6:806:265::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Tue, 16 Aug
 2022 13:05:48 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 13:05:48 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v5 1/4] ice: Fix double VLAN error
 when entering promisc mode
Thread-Index: AQHYrk8nI/Dkts+WKkygKYofwpady62xhQvQ
Date: Tue, 16 Aug 2022 13:05:48 +0000
Message-ID: <BYAPR11MB3367FAAD16E908AD64FF1EFCFC6B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1660310750-290943-1-git-send-email-grzegorz.siwik@intel.com>
 <1660310750-290943-2-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1660310750-290943-2-git-send-email-grzegorz.siwik@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d05959bc-1135-4eb6-f98f-08da7f8809b1
x-ms-traffictypediagnostic: SN7PR11MB6774:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gqn7bBhaDXjgzs9MCnQmsIdvOH1xjKGRE3DU8htDfXJk2AY1B42hMIx+Z35lJ8tt3fpVv875utwECkOFl9W6cfVd3ZyEh3YgR+vn8JBBh3FFWb8mdo+NR/grwnoaGDA4/yFXoijqSs0euhw2aZBwJWafOko9Ix4eJJl1enlQ/yb6yiqjktY275HfE7wkw/HRIFJYol0uQ08tz5mvAW0lJccilWy8sRSouDVsd9Z3UwZ4vYZE64sT9bW5JzUGmI59MKyirncsoifyUrPUkYsGW58tmzTwYujL+37fKoC+Y9ya7u+frjRFn/hUzk+8vrkqsjXO42yCnceZZHhyU0UgkmSduhbxMrLXlYxCfef2AHEhIxvgONvV0mSCmVbdw6zsF92mPdBg4DYg4VLE67UwiuVS3SkHbIMXWn4EurbGGOuol2UFRzksilPnXa7IZMixCpEnnK0o+OoffFPvo35v/Q52/PzoMrXL/t/MyltjqEHXAr76HHOfXcvX79S2m/ICi05vitzngJxtfuQdveSkkEaA80RTG0Q5oIJ/EIQkzeYgnleVxJyXtTnKuVlREolz5zK//6lS7n20ckZ/dtm8GsSRhrBVnypy87sf2Ti+kkOgFmKfTBHvk6XVVwfHUJFIZMARM2YCTFKU8aMZuYNYRH9AxZ6uF6x0sQt9YoCHiaCMaRZvuPacq+985UJE5T2OyV1UF0OfCP719Ez4MijffenwocO9rCgExRULRM7C57Pxyw/pwdPxmB7bT/r1MomhQpxEcAxi841Ke9qPVxFhpdZpVcvo2eWTokWuYzYqSYT/qhQgV2jkumd/WxAhH9Ul6rn6v3ESEhMvS3T/4uOo0w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(39860400002)(346002)(396003)(366004)(71200400001)(2906002)(7696005)(55016003)(478600001)(9686003)(52536014)(6506007)(8936002)(41300700001)(110136005)(122000001)(966005)(55236004)(33656002)(53546011)(26005)(316002)(38100700002)(66476007)(38070700005)(66446008)(4326008)(76116006)(8676002)(64756008)(82960400001)(66946007)(66556008)(107886003)(86362001)(83380400001)(5660300002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Yj8tirTmh+wUuUVN+HpiIKxuJnX+jgfEF78283TPhpztdAJwfYIsR2Otl8dS?=
 =?us-ascii?Q?twXBuIDaeeizhGfj2EkO3fzODds95W1Omyo6fckOVvh/CZO1ybYbrYjy/1/L?=
 =?us-ascii?Q?ft+j1IURpP1IvkZod64eOFtT4TwGcLajopQXpOpbEuv2kKXgUajCFv00gXwA?=
 =?us-ascii?Q?j3GXlNJmOhUFoBOtSin9JuqLKLLKbBvJukbTPYFg1DCl1GEabnh06R1S1Ytr?=
 =?us-ascii?Q?7gc0EN+OBM43NVyR+OPk/ZqbcFONOzl4rbu7P7MH/25grfV/p9mlX8IjZ/cj?=
 =?us-ascii?Q?z5TGNMB8XzpPmxI130/65Dddis/eNny/ybuKY/HXZatQ60VG9kJjbi3ouvRz?=
 =?us-ascii?Q?Kagfoeno7ulL/jyfuCdwxOdrcDsPrjX6bT4yrOC8a9haA/w5izmka6W5Abp0?=
 =?us-ascii?Q?yLJsekb7Od4s6eTCT0TtDrA/o2h8b7WqBUQ+7unopp0URTqLSFtUVuscmeQg?=
 =?us-ascii?Q?u+DZXkrR+I02QHJt6jbzbCwpg0TO+C31+dz+JRTsShVIaAqjnM3Ys8FDggFb?=
 =?us-ascii?Q?aQYA4g7lEdznPnXR5z/2rMonS3AreqgLKB2H1HrWSi/LcqNix0LPBDm+v/xy?=
 =?us-ascii?Q?+FTOH+5WOY6HUnRPb/1J6Ii1pt8dVNsRPIkCL1uk409/9IH6uH6360NIrhCK?=
 =?us-ascii?Q?ZntuxQjvI2JmSoWaCTRiGBk5h9a8ac2fwwH7XxDf7/j4NM4hLfZg4GxC8tZU?=
 =?us-ascii?Q?2AdytP30PlFtpoooa7Qcgv0z+mix50JI+brb6lGqoCqtCXTjx7fUEReKJlG4?=
 =?us-ascii?Q?IjS/3KR68eNhOFFD5UF5KR5AtWJ1zMeZCAXVmOX4rFGFLD9f9Xz31OIIVDA7?=
 =?us-ascii?Q?tfcPfhNlTSdIl44Balkgjgxp1+tjZM0Fk+3MCebK41Lv41aU8j8s/7we13gS?=
 =?us-ascii?Q?c6SGfhSAnILJZXF4Z557Yp8pPUZ4T6PZGITQZTNOpi/j2YTo6Uqhbyv4t4eF?=
 =?us-ascii?Q?M0lDlMnemaHXI1cOUgpfvooG2C61qO6ooGvKApZzOwp0juebK11LpYFUIHIH?=
 =?us-ascii?Q?xuP0HHaSlkmFkv2MPp/hbUd628xn7S1Dz0U0RtP8LBlE5mIPGvG5GUXrswL7?=
 =?us-ascii?Q?VyU77I1orJDG4P9OqaTCXIHgDKVhsqTxEN+V+NcPXeVoXxIuSfQoYRh5f7aW?=
 =?us-ascii?Q?b2hgdtkC88Phb/wYQFxlvBsXA/t62BUvNlPTPIc4IRQcnLzu6nDjLnWwsJx5?=
 =?us-ascii?Q?M6E77C/qhOwF/NsQRnBulL1NnigKsVRKMo6UAgRu0ZeZ9WcvfShamb5cU5d5?=
 =?us-ascii?Q?8jMInfL350bKd47JyMJ1QtkLz/NHCAQwDagGfMTmx4bWdXCOVKRIvLXOC2JW?=
 =?us-ascii?Q?unXpw+eNwRj0l5UKDp9Qojwk42A5lFC44Ovqtq5rysOefKI4Loxx3b2Ln1kE?=
 =?us-ascii?Q?XSC0XGodTplLyCncB9pAUmVB/ken0KGmhoL9fhCm9X75mGzHpUmsUB/nIiaD?=
 =?us-ascii?Q?Sxxg80aGa9H5vo2E96jEV99adgOBzYV+xaMtISOG3JxUFig7NfO9YOBqloWa?=
 =?us-ascii?Q?LRDTCFGwfcu4CCFyqgr8svIlefsyg/NaOoek08bViMEG0cXFNVK+Y2+tEIeH?=
 =?us-ascii?Q?iDbSyl3KTROY66i9a3uvFOBqWiTIRDdBrvfaE7bC?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d05959bc-1135-4eb6-f98f-08da7f8809b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 13:05:48.0816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YPeT1hKvEg8KFjKTZquZO/XsbWTzWlkhv8wfKAk3IY+BCElTSLAI/fzXmZKHb7c/pE3gtBLb3WnrLJPxGttq9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6774
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660655154; x=1692191154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MY5XylWOigC7xtaVEeBXKXfWPbiHmssUE+OVaLYkjSM=;
 b=m3hScq2OWeVHt4Ctz/Lp/AFufP7Frf2y251vjiScLMlM+207XYYoXTHr
 XLLSEp35rdoxIRdelwZ0lvOawv5mPTl9ZxZgmzBG8c2LHZa90glblX2t6
 Z7EIcItCWP/RVgNcrIxlJv6d6H/W9NljXCojnF9riYc/BCDuFzvwLYGYu
 keHij1eZhg2ocFVpV4ise2aHqsyle6Q0/kGLjh6w3QhwIYWXClsC15Ndx
 zieyicnGkU4wexSXXs+NEr2bQgq1cRiPEtHfq1M1bfSSQmgUnF29SMTRk
 xHkWeDLPx+vHaP096ogG9G8q2yXShfaKd8QIxUZDGvdr7uf6LvcfkABBG
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m3hScq2O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 1/4] ice: Fix double VLAN error
 when entering promisc mode
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
Cc: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Grzegorz Siwik
> Sent: Friday, August 12, 2022 6:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Siwik, Grzegorz <grzegorz.siwik@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v5 1/4] ice: Fix double VLAN error
> when entering promisc mode
> 
> Avoid enabling or disabling vlan 0 when trying to set promiscuous vlan mode
> if double vlan mode is enabled. This fix is needed because the driver tries to
> add the vlan 0 filter twice (once for inner and once for outer) when double
> VLAN mode is enabled. The filter program is rejected by the firmware when
> double vlan is enabled, because the promiscuous filter only needs to be set
> once.
> 
> This issue was missed in the initial implementation of double vlan mode.
> 
> Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> Link: https://lore.kernel.org/all/CAK8fFZ7m-
> KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
> ---
>  v2: Fixed error message when setting same promiscuous mode
> ---
>  v3: Fixed style issues, changed to return directly.
> ---
>  v4: Fixed problem with patch applying
> ---
>  v5: Fixed incorrect title patch issue
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
