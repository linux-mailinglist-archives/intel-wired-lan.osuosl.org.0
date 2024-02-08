Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655B984E62F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 18:06:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8411F4248E;
	Thu,  8 Feb 2024 17:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iDS2Zcz2xDUP; Thu,  8 Feb 2024 17:06:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57E2640598
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707411997;
	bh=ieLgqg3r+00B3un43BhJIzW15J3yr6urFe3WajtJS+0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4+wmTVkAe3jcWXjtGz6bHFkiBDUtxDlMIgt8MdK2ZjO8Rtlazv3jV220QvsNdmAAj
	 YGvUjanSWUHfRVbC+m28Uva6XDoTFmVMm3/f3aAEwzonE073NgTXp/ONH7q/O5j2j2
	 Q8Irf4vujc3L7NwZ3jN7fYBxy/mJCYbEuXR37LMZB6m49IvPr+rnXVAGKX89Jqmoks
	 XZC/iamVphIikhSxDaYbf0FTqLRUNAlb/DyLrwooJdMeGM+Gx3Xw4I1qpU6MfJXEN5
	 PpS9ACbXb4yRA6GnJjR4UgYqAqTigY4SkVo6yOYaQrQEOEProf4yVgPicgXx6aY6Nm
	 ENXPiy4r+3IMg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 57E2640598;
	Thu,  8 Feb 2024 17:06:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 322261BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 17:06:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C51A8461B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 17:06:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l5I3nw_iTzoX for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 17:06:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0E079852B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E079852B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E079852B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 17:06:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="5061772"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="5061772"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 09:06:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="6479729"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Feb 2024 09:06:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 8 Feb 2024 09:06:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 8 Feb 2024 09:06:02 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 8 Feb 2024 09:06:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J0mWUcIead//sEbKohiwuHQN6yXAP5tQ8GjwKLbJIc7ZP6dvzfa3qj7vBiS5EanzrIRdk0kP9XSgFd3v2BpVI+L6q6izCPqSGJy3oHwTxIpFxGygrp4xsJFGp/l0RWxIG7qAE8PGyR+15lDTyT/ix2487xxSx4JBtJ5URnZpOkRO4HrJD4n9Cw4tholYqrwCbJbbd/jvqIZJAdObiW7+TOklyKpefuEQu9OpnTTgchdgRmd1IXY6x+0gvmNvdabBmPmb3GYtzW6mIXWaCmxnsxn+UCH96QL37LhHnri+vaVel/kS/mS+FXVbJyPplSVTPxV2uXD9ATeHe2PG0WpoCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ieLgqg3r+00B3un43BhJIzW15J3yr6urFe3WajtJS+0=;
 b=AIM1aPwmc857YGeNhHf8o2kZQ3Fu+LIXQAIJloqRBvj82YiXPfJ0ycEYKhn9pIrMC7F3fJDYc5I2CmG+HMbMH5Jq+QeEY/hkK1YcD625C5idxy1I53PffYJSlOEBKN+ougz4E4Bsug2I2N/2Ayib5tksudBUVF2W6g9BaA+4VXJwmEyKesigcFhFW9zWcczEgbzNqa8WyOSuTUI8oK7j5MeDRmAmrjcjRLaf9f7dSis/J3jjrqock49M/9Jfa74hNjSrbmwihjfvKT8iOG6hB17hFmk6LWWQxYT++PwCxPnxSzl1TFTFxgojSopY5342YzsKRKj4BrexP+dfNNJJsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM4PR11MB6309.namprd11.prod.outlook.com (2603:10b6:8:a8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Thu, 8 Feb
 2024 17:06:01 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7249.038; Thu, 8 Feb 2024
 17:06:01 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 2/2] ice: Fix debugfs with
 devlink reload
Thread-Index: AQHaWDUrrwwG3M2qh06ZAqUH5FMBh7EAsW1w
Date: Thu, 8 Feb 2024 17:06:01 +0000
Message-ID: <CYYPR11MB8429CE8164D5C112A7D1D8C9BD442@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240205130357.106665-1-wojciech.drewek@intel.com>
 <20240205130357.106665-3-wojciech.drewek@intel.com>
In-Reply-To: <20240205130357.106665-3-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM4PR11MB6309:EE_
x-ms-office365-filtering-correlation-id: 24642a0c-fa71-4e44-e397-08dc28c839f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RX308yrdQ37U66hYuEQpNgMyjQoVheN1gR1n1g+L5LI5X3RD6/RbDxrgTK1zF0JJTvRqWYgN2n1ozjze4Pmy8rMi6+u5X3M1E1WvAoN7XXma8FCHZbzJuEEeDOmLbrKGibesWJJQ/zi3n0li37AKKimzhxqWZNyuU4J2xJtRqM6yBBPbO+zv9VdJrjXmVoOROUZVeSZ6MMUdEV25eeAvPTARvbT+OTLcv412KiO7+pewF/Dpl9aCqTUH845KVv8p8Zd8/iB0Dh7NkUFuP1TswqXX3lut3YGeUhkHRMxja2+XX87iiDXmwfcH/NgjepCXPPM4TnUNZCUPdJTMJkyutg3WqhCJ9kkweYUPIwQiOGacx46QkRge8XQYXgr6OWBUSLxF8OO1PDV5VX91h4fLDtgrqD/07Y+DDMmP2Se7kWv3og7Apm52VZJcJ4R+w3n7mV7n9YyVtbHe1c0DRgmwdGivr5ABSHj7G92NsStWJlzioc7Wl4uVStG3mnAaIcORAyExyIVULkEA+wll9K4pIDLnuM1cHGbyX+4qQFgU/DGlYzW7LITgpVPnQB4AOVCXQ3PPn18tg6sndcnGOSxWKbpvJAs4lfTyMfq3r4twSQtxKeiqwoEJVgA9mvQ0Frjw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(346002)(376002)(366004)(39860400002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(2906002)(52536014)(5660300002)(55016003)(41300700001)(83380400001)(122000001)(38100700002)(82960400001)(26005)(86362001)(54906003)(9686003)(110136005)(33656002)(71200400001)(66446008)(66476007)(7696005)(6506007)(76116006)(66946007)(64756008)(66556008)(478600001)(8676002)(53546011)(8936002)(4326008)(38070700009)(316002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HIo7/w/BDOh4HMtYksfDi/O3v05e4CVav8sBTy26Qpi96m+O0v1SxD8FeHKx?=
 =?us-ascii?Q?NyG0OPNYv/0qEYtV97IhZODdtvpSLq0Kd65NhQ+18gDf9sl4PxUvKEd2kBhW?=
 =?us-ascii?Q?/io+IxgZkCRTRWpTGaRCvme937NlW9F/iqK5U2QdwrJdNVmh0q+S3X8rRo6u?=
 =?us-ascii?Q?g37cOgFndSfEFXNkGC+2Uwq964I9+Ewt41jjj2D7Upy4uhKnnSMId0lpMfpN?=
 =?us-ascii?Q?MiRYzJCM4q6bhHlMkWgRcCZ0zoKQEAZVzqHPTTtdedf3FGIOkbVveJ8Z2P/0?=
 =?us-ascii?Q?qrIj9Su/Uu46bcAtUG0NFhtfvD/TdmL0e8fQBDZloOrsMVGXUn715G2ydGmQ?=
 =?us-ascii?Q?V9blPrj8/xcA2y7Yj0GIPLqyCvG4fobIZwWae7bnhgn5ngZihoJTTJPzfV0P?=
 =?us-ascii?Q?J7xjP2kXWgM8QPz3mC4CS+QUdOuWb/PrcYUzHEi4XOmiA7tbh1TxqSbBBS14?=
 =?us-ascii?Q?lw1x0NnhV5kWWN2MTPjC4wck58QvO9Hr2ugmvCzWXloNSU1unTYlsMddPsPH?=
 =?us-ascii?Q?5cnpqEdKZ981QjMs57QJtQuNI87pntD06150O6aFoPB+g62dvItPW7fYNsI7?=
 =?us-ascii?Q?I3eDvKOc22Le7GG9+vPZthZTredyZfbc8maG0OUtZpqpARx59nUCZSfBY1pt?=
 =?us-ascii?Q?8hD0So+ve5JxJtxxtWIVZuch+ldSQJ2KBGutdLW6VAUJnPDzjipZfIT1mMPb?=
 =?us-ascii?Q?uoF7Ur3Y1kjAw5mv9VSDlsZanZlznQSZsPiFzCwKIcjiSZ/tKvaxj+kk25jb?=
 =?us-ascii?Q?9Lf52JsscMKzgyH5WNNUI8RTLONsjjnGXsWHxsIOAPOXjoGORkR7JMNxMtAP?=
 =?us-ascii?Q?mQeKH/jKCo4t2m3qiNbp8sORG7VkBmAONYjL4noZlBLMhVlbzzVr3JWSdKSc?=
 =?us-ascii?Q?xMdLk6afBFCe7z+FCGzu7Y0r11CWwxkctLLFw49P7JnIfU5TW3CRp5UKPHUj?=
 =?us-ascii?Q?/dMoX1rUrLO7wi9bkb4pRaltvXBimKM2kI2qyhlwlJ1XEwPhx4+T4cMMxJ1X?=
 =?us-ascii?Q?g82wkI8140k9yPIUYAX3h/uRadpEH0bemYMk2/LiyiouvL5T7gU/j7EzoDRe?=
 =?us-ascii?Q?5kZdCLfHg7XC2kBgg9VVnI6F3htXCztSI7azJKadmISJ4RGN3iOkrJNpcOBw?=
 =?us-ascii?Q?9VTopbOV3rJxEa+jRE11tQO4zPrMyqsc8zD7Xjk/9ikm3t1peeSR0l0b0kDl?=
 =?us-ascii?Q?YO88dwsNlbkUascPvQhQ6OMKp9gg52gnJW2xV9T4uoTpJQZw8dQabbFjAvz1?=
 =?us-ascii?Q?+r6ATahtEBMsYRKeiu7B42cRPRfdau54KZh+CohV3olbfnzvmcI6bg/qgpuM?=
 =?us-ascii?Q?pAZQNaZDBVA4komr63RyezRNCN9U4m173O64drDS8J+yTdZWIkqgNQe9x1kq?=
 =?us-ascii?Q?+OA53X+RgFHdrQjZqpvXLOM1Yc1TuXwHEsUsRXNqlUV+GEtGDK5CQIKqugJH?=
 =?us-ascii?Q?6NVojqyGWW6/hJABxV9ObU/z3rh+zLUw6a8jfY+cG8MT10dBXCUrpJuFlk/E?=
 =?us-ascii?Q?ZvOc2S+f3y+AsQZDIdj3L8muG+pEhsfF+P+1ZKRhzLlj/jwit3rwaYp5t51f?=
 =?us-ascii?Q?VV1OG5+lVfP4xZKhFQbUwpsqUGJJr/UL7ykQluHu6zRnqJXUSGRTfA6hL2+F?=
 =?us-ascii?Q?yg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24642a0c-fa71-4e44-e397-08dc28c839f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2024 17:06:01.0366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zXzHYCB+EGHQKiQbAmCmakaAqSroydD/aZczn0BIZmWRLXpfMkjwWYtk+6Zep3MrSuZ+geuPXEiJUk/17VYLwmuE6qBHSh0E4ExicbaX5bu8bd34TLLQSgo/FQ+bAp2y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6309
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707411993; x=1738947993;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LrjXg56DMqtg3AOluXeaKlrLE4OWT7d+Lk/oxvxSwvg=;
 b=C1k+kdWRiibN9kHqvctIcl+H5QFPbwLka1Kzjh6ed5GuhH5gA43EGYnO
 iqYG8PEIVOA5iFHf7+WScvq4U4q2NHr8XU1XWLNaohg8NTSXG19KAuRCH
 MmT6oyfVeQ0MrMHInre1XAANE04EZyOmJjOVs29wE3v+SU8W3zzOXdd2S
 72zHtIXiwJdACjveohp1r5M5uhaTG3nEP+YlAXaKYKDA0nfpYFCi1tbr/
 6RIqUhSREdDfY197O/Kp4XaPKVhpnVu5+MiWdWuprfxoPLnbD1uj8bRQz
 cOhvmKxobqQGqNOd4/bJouirI6RVWg2w6XGWUE9Fa2/O1dmqADDUGgj9I
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C1k+kdWR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/2] ice: Fix debugfs with
 devlink reload
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
Cc: "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "bcreeley@amd.com" <bcreeley@amd.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Stillwell Jr,
 Paul M" <paul.m.stillwell.jr@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of W=
ojciech Drewek
> Sent: Monday, February 5, 2024 6:34 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: vadim.fedorenko@linux.dev; bcreeley@amd.com; netdev@vger.kernel.org; =
Stillwell Jr, Paul M <paul.m.stillwell.jr@intel.com>; Kitszel, Przemyslaw <=
przemyslaw.kitszel@intel.com>; jiri@resnulli.us
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 2/2] ice: Fix debugfs with =
devlink reload
>
> During devlink reload it is needed to remove debugfs entries
> correlated with only one PF. ice_debugfs_exit() removes all
> entries created by ice driver so we can't use it.
>
> Introduce ice_debugfs_pf_deinit() in order to release PF's
> debugfs entries. Move ice_debugfs_exit() call to ice_module_exit(),
> it makes more sense since ice_debugfs_init() is called in
> ice_module_init() and not in ice_probe().
>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |  1 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c | 10 ++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.c   |  2 ++
>  drivers/net/ethernet/intel/ice/ice_main.c    |  3 +--
>  4 files changed, 14 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

