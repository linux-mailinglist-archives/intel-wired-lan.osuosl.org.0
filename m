Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ED81D5A45
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:45:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F13C42EE85;
	Fri, 15 May 2020 19:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rD4-2hY0SsTh; Fri, 15 May 2020 19:45:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9CBBB2EE1A;
	Fri, 15 May 2020 19:45:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E91E31BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E2A7B88F31
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:45:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7oM4DVwi8J-f for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:45:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7B84488F56
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:45:08 +0000 (UTC)
IronPort-SDR: Xr9jw5XXbUUKDqqQqzU8Q2aMi+qgF875/82QCSun1OT/FhMTU3PNYnHIHNohhXQ7hEpH5rkuNQ
 h7tLhoneTKwg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:45:08 -0700
IronPort-SDR: T/lAzLNYRrQk97dMVR96FCK8ehD1La5ZSE+ZOIdRZGSiQUHoX9/OI/7EG9oZpPMwfkDAC58tlm
 6RFuHk44u90Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="307504099"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 12:45:07 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:45:07 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 12:45:07 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 15 May 2020 12:45:07 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.56) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 15 May 2020 12:45:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IdzjGwKIHBKmogrynOsc4fQLTM/P6PtLU7VxHpKOvOglZwYPDGB/fDXS4c7BSL6KByQiOaIYVcv5j6xbGK2lqBFuZpgi7xvp6YbYjUjzmnvGe7DLA/T4aCTgK74LpP/5DQjDjawdqIpCZvabDjuKLoojp2ubKz2g4CApLBXRXou1RLg9v8cOzwy9Mu1zfYx2TQ8VWl4LgytN9HHEx4QEx+CQx3EdHgq7wsJh+gHmrDvO+kFdW+L7iIJMvK3HHBpOMvCMnfb8Kg1syQUhWBfUusJEhOW2/usRaaLPfx2OjzixquYCla6T+ZVrEDpQo+vk5TLtGzvkxVnXt6BBv4TYjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QIje8x5KL04F/uv1XkXwH0vYGQEdFa4K69oWsUZqL98=;
 b=TqEDG4hR6r+1ybfUZKzrAMTv9KPhcYfScM742ehz5U87yffQqLVkSOrwBbCj8nuRL14J529fnQbsLkRQFPDHaD0PO6OAWRB01EbRTprhTdthd2ToSAl3psXGEErP/Q/bt/VuBEyMrObLiOCtzsJCNAkuACRms7KocXNOpRsN6wrg08P35V17m7gJPekEf7EVEt2ZZ8E8XuZCtrZ4UWL0uSNWKFR9kr1HGLwW0YIgfgVvteJN8UcGjDo2w3H4ucyB81Ss5FnFxIAKY3pEpHirk0e1QdTHuyAfM2TsVJuu11fqxBSP0IAi8m0eQu5dwr5d7dBCEDYoxvBR/jPA6gWqaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QIje8x5KL04F/uv1XkXwH0vYGQEdFa4K69oWsUZqL98=;
 b=mVIdou70ycaL2EWaTv15SOv0zN4PBX++Yuu+CUrbEgsFKbgzoIJMslyIbRfOegL7N1pYQeLm1B/VaGJt0mXBueDuIG4r/TEHEjqtuGO4rqeCJ6exgXBGEKoW2xjfJqnc1RwVQsaqvPc+W4m8Qzh1yX2bp/PqKCW8e+/a40rYaVI=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1945.namprd11.prod.outlook.com (2603:10b6:3:10b::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.20; Fri, 15 May 2020 19:45:03 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:45:03 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 07/15] ice: Fix casting issues
Thread-Index: AQHWJNHjt5HzVhYjXk2MFNlVzRBoZ6ipmOjw
Date: Fri, 15 May 2020 19:45:03 +0000
Message-ID: <DM5PR11MB1659DCC5B18488B59BC1B7DE8CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25c85230-cb11-439a-ce13-08d7f9087670
x-ms-traffictypediagnostic: DM5PR11MB1945:
x-microsoft-antispam-prvs: <DM5PR11MB1945CAA67823E9E14F4990E78CBD0@DM5PR11MB1945.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: il0CxFKMMKYg43zaEMdnaZ0MSox7eAdyLElRVdd0ZfbABb0X8V6ouLNs90ch2moVh1U2X61Tu1nH4qan/QIywj1OgrFVI2v49cbkLSKp7n1Xs0cXBdO2hW0yt3w1ZPkYbaX92d7dRvl9FpyPztdMIsk5+A2ueTZ1YxKo1vEYyD8QP62ZfuwUBvtW3iIMUPtwDHsZVQO1KfIdpw91gI74sKd30UbK2rDaVtw8HCx6ShldyFV3n7C2Zp/ADDmWme9tPb/xFIBY2Mr9FoH8mt7wrujjfC56HWfERO2XTORJDTzBS4A6pZQ/5gMyPF/pw7BmNdleICibNDq+aXBvcaOIn+4K0fSBWUHQrwJOcNT1K+RVNN1trHuhDMBdvFMEog9BjyaR3qFD05KZvraru2QY1jCZcIIBnNX4S2z2EgF80X4ZTTjJ1TcNKppdgoiARJCH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(346002)(136003)(366004)(376002)(396003)(33656002)(478600001)(86362001)(76116006)(6506007)(66556008)(9686003)(6916009)(2906002)(55016002)(66946007)(8676002)(8936002)(71200400001)(186003)(66476007)(5660300002)(7696005)(66446008)(53546011)(316002)(64756008)(26005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 2gTWpdDfzg1XZnkALJLFwuDcX4cLjImSDp2lCH505fCAK5OLCmujAwj+QDdRFZauBdIyVqX4RYJ8wl7E9Wk178e4m30nMDeH1MDmzElmSUaVVwt3gbUw7cpfXIwidOEWnw31gDUPgSOq0t5qyTzxMW+YASdY8kQonHiWjzCF4Xs4oytgunqSxKgPfma+T4qMvDUsAxTZ8E9yLiwTwVQxJyNJSApPwjg/koNUSd4GE611v23wUh6xTNjkaZqMGenEJCQlB2+aI82LNsC8ZsxKYzlCA93m/CsSUE0u37WyzwZXgjBMHhuovO72B0hsI3/ldIGiGLZshcdMX5V++JswBYU1FjdL99ZB4s9zFvdiSoaRZrThSxVSDzcFGq3XDt5CF5Phby2VRDPm6rz3aM76iBA0TG95M9WFj6KFwV/LdggAPjokYNMZUEjnwo+dLEYYUs39jdkM3jtOlm5epJxTdRinhFSjppBeGpsoPJ3+OjtVecsl45wj68b/LkVLhIFY
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 25c85230-cb11-439a-ce13-08d7f9087670
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:45:03.7653 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aL87MU5pO6TKXpw7l6rdLItR3YfLX+6283iPEkwfpXe00SrnpJVOPZmZdUD04FeDOt194jcGcVF7+4b0t1mIYjejcBvkLY05CVM0zVWr/WE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1945
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 07/15] ice: Fix casting issues
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, May 7, 2020 5:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S41 07/15] ice: Fix casting issues
> 
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> Change min() macros to min_t() which has compare type specified and it
> helps avoid precision loss.
> 
> In some cases there was precision loss during calls or assignments.
> Some fields in structs were unnecessarily large and gave multiple warnings.
> 
> There were also some minor type differences which are now fixed as well as
> some cases where a simple cast was needed.
> 
> Callers were were passing data that is a u16 to
> ice_sched_cfg_node_bw_alloc() but the function was truncating that to a u8.
> Fix that by changing the function to take a u16.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h          | 10 +++----
>  drivers/net/ethernet/intel/ice/ice_base.c     | 24 ++++++++-------
>  drivers/net/ethernet/intel/ice/ice_controlq.c |  2 +-
> drivers/net/ethernet/intel/ice/ice_ethtool.c  |  6 ++--
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 13 +++++----
>  drivers/net/ethernet/intel/ice/ice_idc.c      |  5 ++--
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 29 ++++++++++---------
>  drivers/net/ethernet/intel/ice/ice_main.c     | 13 +++++----
>  drivers/net/ethernet/intel/ice/ice_sched.c    |  2 +-
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 12 ++++----
>  drivers/net/ethernet/intel/ice/ice_txrx.c     | 19 ++++++------
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  2 +-
> drivers/net/ethernet/intel/ice/ice_txrx_lib.h |  2 +-
>  drivers/net/ethernet/intel/ice/ice_type.h     |  4 +--
>  14 files changed, 77 insertions(+), 66 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
