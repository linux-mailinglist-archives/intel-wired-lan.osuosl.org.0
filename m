Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EF07E60D0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 00:01:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 979C940339;
	Wed,  8 Nov 2023 23:01:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 979C940339
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699484489;
	bh=ZH5/Xpus8UywkWV5HC0TjTIQXLGONiCHvWhtBx4pSgs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OHtzBk2GZePwqhtSYZwZQx9tMSqTtflIUbwDWU/bbHYJ+6ubeLMpjljopvbooB0S2
	 lsRWhUg7qLtcAlflY7JwnwOaQd8mBKZEyERhDJB0SXPi06hoLdY4kLWsD6cP1zG4hS
	 lAXtSaygn99SLTn1k0j5hEN86NGgUg4IA9biXOxhiCpF7vkISZX8OBVKYt8Wqv1dv+
	 01ElqJnCuVpnA16avaR3UVRizW+IvfK+40t2VW2B0wHUdNPcLVEhdqwgtP04R8gtEv
	 xLUv5lzZNTxTX0QCc9t/2eBi2qcbmx8sVfkZVhImscoHWxS71yn3qurfd/yjZsK32W
	 HwhEav+/9xGFA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QmqKcq0UQn32; Wed,  8 Nov 2023 23:01:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 27C5E40296;
	Wed,  8 Nov 2023 23:01:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 27C5E40296
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1F981BF40B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 23:01:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C8E4160B51
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 23:01:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8E4160B51
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W1mDjpa314xO for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Nov 2023 23:01:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1797360B3A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Nov 2023 23:01:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1797360B3A
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="456371496"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="456371496"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 15:01:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="798157619"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="798157619"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2023 15:01:04 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 8 Nov 2023 15:00:54 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 8 Nov 2023 15:00:54 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 8 Nov 2023 15:00:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dVgkqUtYWzZv1TTYINNYpx+Yq7v/H+VVwlnnokkB7sJAqurzOTbZMavvsbXq3Ri2OsI1QT1U2HA+vzqZPvEukC56PxuA8feyLQk4NEbiMS3+ZgEj8vELOq4WKJ5yJ39/Z8KiSKgUADtpPi6dGCVjgcVMuabuuTHbfNAx7VLIhbptqvVArW4VsqL158+G80VHjNYpCkT4DwDUs8FksxojFquYf8+EjPg0S6kUkg6VWOu1/8qy4weFCwh2UZ1CvY/w5nettaiGQjxGa6yYdJsGEiz78Fbmu0pA+C8RnB+1TqDmvU1o5jKPOJnyT0eStZ3lnNG6/XmDwCk/3rAcLPlLEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SL49Li6e6CO8lUY7Yg2c+G9PTj43Zmxt9xl7qkeegNM=;
 b=cLvbYCueDSntjwhtovAFH+UKb9KomIgM8psVoU7TMqNJZ90MuVUbWKVkR+jXvxWfY9GGy3eO0rVx6mJTAJdl+6R9+f9CEsBalRpnC3TR3uEnZ1QJZ9a0ebaMTsu+Coji77D1AGZ2nce2qLe5Q7TLZMfcPydEuGqufYs7UFQoickhIU61QlSghPLHBBGagPoTv+sB1JSB3TNL92busPveJIU0zz2oku7YJraD1tEBZ+xZay9IRVVi+RQ3hPiL0whWd3fkBb66qDc2XNNVBemh2T5l7egxeUlW5owqX10A1iKGws4R/8vo6xfUUANRHAGoq2gJxMRaiaMxOuJzKc2IpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SA2PR11MB4889.namprd11.prod.outlook.com (2603:10b6:806:110::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Wed, 8 Nov
 2023 23:00:46 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6954.028; Wed, 8 Nov 2023
 23:00:45 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [linux-firmware 2/3] ice: update ice DDP comms
 package to 1.3.45.0
Thread-Index: AQHaCAxN4lYlllsvj0quw7yzFDzldrBxHltA
Date: Wed, 8 Nov 2023 23:00:44 +0000
Message-ID: <BL0PR11MB31221E6A5B97ABCDC2712208BDA8A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231026125814.35826-1-przemyslaw.kitszel@intel.com>
 <20231026125814.35826-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20231026125814.35826-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SA2PR11MB4889:EE_
x-ms-office365-filtering-correlation-id: 283fd70f-7d33-4933-10f0-08dbe0ae8a05
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BpQL8fGZYlWIb7KcIhFoYBifIeUIMmfPGgqAf8a9mHIcophFBoOL4A4AXJCsDkkM0lhcOkTBQjRlNLTNEznIwFaHhB8LudOU3qwhHl5PPI+pEzdLZrR5InCDKSQ0RR05VCRWf4H7Bj5LeueMvJo6AGRzPH9D1Rk8cL5IAQYOivS7QeCW8wStHz81g95UU5jAn90QyULKuIJid3X07rps5EwXSRNT3WxdXnY1rpp/Xy/dqZidWQCUtY1AyFZxdRY6DYVdg9GOtHbH/wZ7KF4vZrespzdT+IRKBug4bG3ozOjMNhsOp6yfAIb20ZwwgcepJeEnroc1oma5T/1phVX4n6JH4FvBPBzIgIaO5ZYXM7rf7RZZ899RsqxEetsruV2WW2e85zImYiACP9lY32TQwwlVO0kf8ouwbIooaiQx0mbiRq8hQ75Eutk0NlZqIbXzfstgnn1oCus2YygHNk4JpMeFPsZUI8nvQLn829c4NBQ9RryXXjqaGXquPtkJQbhOcq7HhYqABO2ApZStcmMUjshohgUd8IMYSzs1mtjHPHsR83PT+Wvp0PxZUQutTjiqABFzkqBOkny2yR0eZtkpHtglPYFECHSxT1hV/5l8smPgmb5X99PmJ0IKEF1dR8wU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(136003)(366004)(346002)(39860400002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(55016003)(83380400001)(38100700002)(82960400001)(4326008)(33656002)(8936002)(52536014)(8676002)(15650500001)(86362001)(41300700001)(2906002)(38070700009)(6506007)(7696005)(66476007)(71200400001)(110136005)(478600001)(122000001)(53546011)(316002)(5660300002)(64756008)(66946007)(66446008)(76116006)(107886003)(54906003)(9686003)(26005)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0MBdA6JOXunC7+Trx3mY+UBAaZEyWlj+aDW0eegBbeTjHd+0n3WwHTXh9VKw?=
 =?us-ascii?Q?MQesu1cEnS1T1a3TEIpen2xD7Fg9Typ0rotBqXWH4gJ+ctvK7GEF/DMO724r?=
 =?us-ascii?Q?nV86RCYiGOnm/K1ZXhB9khBF+ncN+fhrMBtseizQTp0Yp2KMCu0Ks7tYR0Tc?=
 =?us-ascii?Q?C1orjO4h8QZyVwymWNsMrmUc5XBqBr9GXgeeVmNeSiyvu2TFm+ExZi9FqYPa?=
 =?us-ascii?Q?EI3TmkJzgfO7EUDZmmereiBt6zilCjbMN1OWsXAw2ls9JyFmWlniLHzjc2Ww?=
 =?us-ascii?Q?LQAlJdEd2Ci0FlNJQ5CTMlZs1LhnxXQu6++oEjNYQIas5TBi+AqDYtXvyDtr?=
 =?us-ascii?Q?67wrDi4dU0zz1oQcvLbl2KNMafjrE9h43kOBPz2u3dPrC/15lI96/pGQXVfI?=
 =?us-ascii?Q?31dhkfBHxNRD8+Cxy6A8i0Io8UdR06bh19qTHKKZgqJtjuqOBWb2btMMncet?=
 =?us-ascii?Q?fbp+6lAkCKB1zFif/k/3pVbktkUABr9vAMkk1/WckIBwtYR+rTqx+8t9d3Au?=
 =?us-ascii?Q?c7Fea4UGm1H5UXiOUCtn5fbgoVBLVb5dp+uPHF9gkg/JjGJ+gg+4Q9aQ2iEY?=
 =?us-ascii?Q?81+dpfG9SZMtNekupdyH9ophuEeQqPYdHZX0/NRk4ANeiNe2SmGfOLeG+3NF?=
 =?us-ascii?Q?03S30ZmydViRIAiT4S2b6TQYSB/Vl0eohMhOanBikDocumpBeUuk4tYZ5AP3?=
 =?us-ascii?Q?xeTYdtQpjYFJdlEEUB27/7ZJo0luuBRvAaYNUfSBVYsbK+kqxWaMnQAw/xdZ?=
 =?us-ascii?Q?bpLt1dsw/Hwe9vBdLC/dNlaHtm3SzMZzN4x3MGjPPyU8M5eZST2Dbws4V58o?=
 =?us-ascii?Q?Sn6Wx0n76CTpWoZXDeYapDFhctEbMVz4tKr9NU2LURcMt+OaUts2lj0C0fAr?=
 =?us-ascii?Q?HfnOaWobVJp2wB+gWjIHlL0L2OvaE26+rmzMezgchtTAeTMwaCz4LALhF4rM?=
 =?us-ascii?Q?5U1vwmFFZ2u3oq0v3kCI0nQ3HhH5mqP8Y51B2S56W5r71ZszG9W6LamCz3pG?=
 =?us-ascii?Q?xcpapf+PxYdMotcVquJ5smqBCTkUdcUZ0au4rINU0vZs0+oGYBSZWF6jppze?=
 =?us-ascii?Q?t2OgREaK8wKAm0lN9XcCo3McuXh2b6MBFqGIZ82YRUhR4TRsPSunAtf2FRFf?=
 =?us-ascii?Q?v2iKWHrYCEIOAfc6OjkpVt+LxCDg1rYrY3hwSc/h2cxhL40Hz7ESm8bAv/oq?=
 =?us-ascii?Q?R8LsvG7LEOpxv73fkRnP7p5PMQoCnyfgYQaxvn2DHHdaCpxi5ULBKkF2eN6w?=
 =?us-ascii?Q?AGaJRHRrD8Mzr3nPLUSdmlqgvebt7EHVHY4VF/1qnnj4UhMoTQMr24jWzOSQ?=
 =?us-ascii?Q?dUw3kFd5Dk7oJwRmMvoFxM1DnBwe6sxtM3+nxhbAgVTnv6HgSb7J6kMvI/df?=
 =?us-ascii?Q?5vsU+UrCKFE1+PtsFIVn54P8CeD3rl7DQvyLwgfeY6bE0UZ/fjrWSjMbZE3V?=
 =?us-ascii?Q?Lp7c9hlrhi83HHmPLSw96Q+gGnYKZL1/TpE1Tbpcz+WmXlnIimYj6B5tT33E?=
 =?us-ascii?Q?TMuMXT9ExJZdVTuFrEAYUSKlncTEG6KJsVus62cnOX49ARdBIONDyDz8nLHH?=
 =?us-ascii?Q?/5SmN22njUCo+PCgnxXNOmSlsfK54TLowqlFsfKCFkgvS+U9qTSVpMh9rXOI?=
 =?us-ascii?Q?7g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 283fd70f-7d33-4933-10f0-08dbe0ae8a05
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2023 23:00:44.7087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r3hLov4TpcES/tzm21ObrNCSCZkJIMAxCs0IM/EGMdannAMVLHKVVCrn9v/q9mUfPX5ceVqfloA17o87fqLhmJ87zPV5cYHHzoCItqpyPVZVpjqe/2YJL1SvoLWhY/kR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4889
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699484482; x=1731020482;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q3v9Vx/gXXmGw2Pzxp+VJ4hb02WgVJQOw/Jum/Wn0j0=;
 b=FRqIxrYQJIdpz80wI2rELaFpaUEu+wGdGqso3K+aFvJArm2aDLILhp7J
 RFsM1ajF5bN9fuErGnOtdrRHggHhlPOBB6J0s9rqbeDLAe4uMqYfY2g6G
 Jo9zveCy3fDW3Db+0pge41WEpy0/fqbZrgfQvQNFBquEKI3mUTD9rm4O4
 oeBOiZOCW/mwEmotTefraDQLlVPYc+cujmh5paXCy2uTBt1lBCwIoc9p5
 YakiCRoDcWcnFrzcQlPNGG+mwMxsVLTSxfeKyty3G5A5zc/Irr7E7X0Xl
 qyDph+z0vtuANA7kh178jB5DV9JsjUUbZ9IlZnCJOcxA7C2CenFCbH3oj
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FRqIxrYQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [linux-firmware 2/3] ice: update ice DDP
 comms package to 1.3.45.0
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Limaye,
 Priya" <priya.limaye@intel.com>, "Deb, Shekhar" <shekhar.deb@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Przemek Kitszel
> Sent: Thursday, October 26, 2023 6:28 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Czapnik, Lukasz <lukasz.czapnik@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Limaye, Priya <priya.limaye@intel.com>; Deb, Shekhar <shekhar.deb@intel.com>
> Subject: [Intel-wired-lan] [linux-firmware 2/3] ice: update ice DDP comms package to 1.3.45.0
>
> Changelog since 1.3.40.0:
> - Updated the Protocol IDs that are being set when receiving MAC_IPV6;
>   type packets that have a VLAN or MPLS header present;
> - Flexi MD4 and Flexi MD5 in RXDID22 of Flex descriptor is being used to
>   describe rule id matched in the Switch;
> - Parser is updated to set abort flag for malicious SCTP packets;
> - Fixed an issue in which all packets with SCTP header were not received;
> - other fixes.
>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  WHENCE                                        |   2 +-
>  ...ms-1.3.40.0.pkg => ice_comms-1.3.45.0.pkg} | Bin 725428 -> 733736 bytes
>  2 files changed, 1 insertion(+), 1 deletion(-)
>  rename intel/ice/ddp-comms/{ice_comms-1.3.40.0.pkg => ice_comms-1.3.45.0.pkg} (89%)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
