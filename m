Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B5A33E607
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 02:28:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3464B83C17;
	Wed, 17 Mar 2021 01:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M7x_sAtTRKpZ; Wed, 17 Mar 2021 01:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10A8A834E1;
	Wed, 17 Mar 2021 01:28:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 42D541BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 324FB6F5BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:28:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cfheDwyo99qf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 01:28:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 72E6C60684
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 01:28:14 +0000 (UTC)
IronPort-SDR: 9bgraD961YRdDDqrgy8LjdefYtqWMThX5puzdQPvwtmduns7Fouq43jhTTWvtTfP6yu8+BVfmn
 VvQL0M+76eAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9925"; a="253379372"
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="253379372"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 18:28:13 -0700
IronPort-SDR: vy7+QCE8uOIrMug3PNCnK5K0Bjle4hmJKwgg5hG86tdO0t9FYmmit397PykcCsjQCreFu5DhbD
 APPxOCeRjmzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,254,1610438400"; d="scan'208";a="605493797"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 16 Mar 2021 18:28:13 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 18:28:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Mar 2021 18:28:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Mar 2021 18:28:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OGb1kRT/4FWVUyLK6xQhYoA3eEPUpR6wpkWf0prH7mscMAJAHqyEaiyQ02ZlEMiQ7+Cv9SRwDKWtULfhCHB8bC1tLV0KcqDlXW9yXAFsrOcw1REDCyzTUyEub6AsiPibRSRXihANSZ40fRUATnt8oK24ig+IVNdQq/GhBE/ZbdzEV/IL7JhCfIctMzMlngVTezm1Xcf5mIcagNE7bdJ5QUbpmzvL8YPbOPv8XncV93zhuCip3vGokQCFSibuxtnrFnJXl14WfcYesKffsWFCB7/DX+b0l6Gq52UBccF7ecL2R8ynAicQ6BbHm3pWpG7h25H1nva7ovZIZElFgBQbvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gBsDqDpUDh5L6LdIJ7TMrRcDdEhMEePKIIwIcS2AxZA=;
 b=KbQOxpnrsWLqqGbXOebzOKwX6Nfn17jEt5/CbNiquRnvQEd11ed+P1H/GIzQ+fSeIxCW9jnOBf0pbwSc3t9kf8g+5lwVYQGK/0OcBNp7pHO1JgbLU2SFYDLeCNoktzio/lBmgFpYL4HYbyKCLu05fpitsxMT7NW7OvwEvyNVMz/WrFcoh3mFCQOYo5E4uzhInmxsVZX7FfoQ5XEIahVVCB14HGw9WGLnSyjN8IQQmLsZ9fhanP6mKibzIiK5wkUMSjiYWhKZiKOHI1HfPutHcoqQFtZL1WSSJ/jzRJ2RURP49mtBTwQSC+ODI6iQKVaazlgaEyji2VWvSezTtAUscA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gBsDqDpUDh5L6LdIJ7TMrRcDdEhMEePKIIwIcS2AxZA=;
 b=xZf3MjJxd94cVUadC5nL99XOW8zH0YIpMNj/sP3xavSvcM+Ae4I97U2aZySeTXydE7bMb1T+sOoQZCWWBo8a1f2nyEbnqoM3zG3EtBT+vO+mDzqvuCT9JJho4v6wlbtC2mW6vtqIHCcIDRwdTHznFn3SxCu2pM7i8/V3eRcAv9Q=
Received: from SN6PR11MB3101.namprd11.prod.outlook.com (2603:10b6:805:d8::23)
 by SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.30; Wed, 17 Mar
 2021 01:28:10 +0000
Received: from SN6PR11MB3101.namprd11.prod.outlook.com
 ([fe80::28f2:95b5:15a:6656]) by SN6PR11MB3101.namprd11.prod.outlook.com
 ([fe80::28f2:95b5:15a:6656%4]) with mapi id 15.20.3933.032; Wed, 17 Mar 2021
 01:28:10 +0000
From: "Chen, BoX C" <box.c.chen@intel.com>
To: "Wang, Haiyue" <haiyue.wang@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Patch v5 16/18] iavf: Support IPv6 Flow Director filters
Thread-Index: AQHXFJQAeiNYP3175kWwAfe3j38nI6qG2l+AgACWAvA=
Date: Wed, 17 Mar 2021 01:28:10 +0000
Message-ID: <SN6PR11MB3101ADB5EBB2B6A6BF221415D96A9@SN6PR11MB3101.namprd11.prod.outlook.com>
References: <20210309030815.5299-1-haiyue.wang@intel.com>
 <20210309030815.5299-17-haiyue.wang@intel.com>
 <BN8PR11MB3795FBAEE6E42B056B7D3047F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
In-Reply-To: <BN8PR11MB3795FBAEE6E42B056B7D3047F76B9@BN8PR11MB3795.namprd11.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.46.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b614f6ef-38d3-4f8f-cd1b-08d8e8e3ed2d
x-ms-traffictypediagnostic: SN6PR11MB2640:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB26403CB4E9A28573974AA4C5D96A9@SN6PR11MB2640.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:800;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zl/qVrwouR6sQzDMc1T2EnbZz2ki35rH8AFllxLx2tB4Z7WqRxYdxV8R+9TmnU12ETymO+1VxUE8ybYLu/GS/O8gG/DEQdviRNSlTY87W9NRCUV7J/crF7OMDT3YJ8DPa6SimHFayXAXfLxlXRtrhAI1xauxJhYhgIP0cEM0VHJ3v819u3xMQaSGu1NIPofVnMi79SMbJB4fR60XNzqqp9lqtYSLo4+Q+QgidYwrdGgpoUpOJJqugixOAjNdWyiDEVYcPnGmjmQpCtK+qFyLpkBpszytsXHB4hUvBBGFb5hR8cazUQ+LC1TW9yVPwK+WFUmWJCJaf7vIfkkqfGcKUs0U6nufpoSo05m+gNWK9YYj5vMIZLsCI1QoHcOeR+jZg2lMSrwHFsa7Td5yib1un9QYNMM33UJj11FITO+4p3lj4Woh3F29k+Cq/IQpjp0t83bR5fwixmj8SWMfp6uAtVSt4++o6mt5mxaA0ul+TcbUlhtP4lZD6h2/yg28n618f4kwutI/Qgw5GmE5gFP4cQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3101.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(136003)(39860400002)(376002)(346002)(5660300002)(6506007)(66556008)(83380400001)(76116006)(316002)(26005)(86362001)(9686003)(4326008)(107886003)(53546011)(55016002)(71200400001)(64756008)(66446008)(8936002)(33656002)(66946007)(54906003)(478600001)(7696005)(110136005)(186003)(2906002)(8676002)(66476007)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?FCh/1nNElDhxzXaizI2iniFkSF4qDOgNrVIRtXqb88kZuhgmybycpQ/PmQ0o?=
 =?us-ascii?Q?cIOnq21+BH96j/2QXFlMnJnpICH5R+S615ICe449Jk3/7KYVjfX8dJwRujTp?=
 =?us-ascii?Q?bWnIxPHyV+PhPGrHHUSgA9UegAJDxMAn9V6Qj7PWrrJ/knJMYbu04PTmstFQ?=
 =?us-ascii?Q?5z23JNboswEBADMZN7hWTwZLFHrApHJQCwRI+Hp9/NBRSW9kVq9hFQaD8/cu?=
 =?us-ascii?Q?xIclwVdscKUCCgVCc9aEvIwtG/75Jy/B/zsXD+iog6VXVyXvQd+mhHdu7HNY?=
 =?us-ascii?Q?plM++T5xK8rCZbKatEcIz2YUfo/vDMrURNciCW/VtWUo3qAtuFB5uLxj5ImI?=
 =?us-ascii?Q?tuPDREoWZKlmYBmaBzS3/rwU9hNkBNUDZHQ0xgGooNeOpPcgnN6tCmlY+ZBL?=
 =?us-ascii?Q?sCTYJ85S4y18lJXw5PmE2aE6XJgZ82j9Inc9KewupFI3HmAb79CA5vJ3250S?=
 =?us-ascii?Q?m04im4uT+fgmMx7PPMxqy6Be2SwUfsgPtdBbnNVAmJmU1H9J1udwEsPoVGzm?=
 =?us-ascii?Q?FyqwK9SNdA9q6euAUr6Pa4hxIZ+085+8of4qumDcda7jIh+azlTFzsR7bR85?=
 =?us-ascii?Q?GaJyhNfD2vpohCU/jAlhrrGsH7aOuoKl79xOKX2iLf+gMuUgM2j7OeZOnV1P?=
 =?us-ascii?Q?f7wEhs221lyHXKQYj6OT/2cZ2HNgoPMba3KccSMxI0KJQ5VPtJ/+2Amcd+9P?=
 =?us-ascii?Q?Ek5BSVqv5PkjEP/81JjYS5mCLGwBQ3uTBDtta4yh4qUwF9rR2V0ekOOpHv8I?=
 =?us-ascii?Q?qo7baW3mmxGOFNhjjIxYYyxd/FYt6ho/VLAfx+RFR2kidP+O0XUVxbCr47aW?=
 =?us-ascii?Q?ZrpyspZK9zO0CUFH/AEbRe/bdCJQCVcc1qiYew+sjiLOe7gmzI2UQ/J6/IGF?=
 =?us-ascii?Q?YeLR+9vtLzCYHSappRiK68kFTLAYuqE2hcKQxFjDnMWwX/JaQGgGlnj7jvqv?=
 =?us-ascii?Q?sCsQs4HpdJhVxx0dz5yPq42hmQkf9ZvPDGvA1B9+Tg8zPzOvle+jUVg4hP6p?=
 =?us-ascii?Q?QlgISy5/kkKquPU+fdfo5bNQCMGHzHKkslASo5tiP5gR+7kma4xHeZql5wGQ?=
 =?us-ascii?Q?Btnu8J6928/PAk95UdoQkpnIEdDcoCIXkiBsgqfQi6/YP836lAfu2y6FLfOR?=
 =?us-ascii?Q?kARhF3mPG2p7kpUZccJ8ZgbhFYKcAtPsurJvwlRvAPaZsDuo5DWcupZ+wyN2?=
 =?us-ascii?Q?n9h6Dc5z0vABf5ggqrBld0jaU14SFqv/p33LEd0rJZYINWmlWGe9Xayu97yH?=
 =?us-ascii?Q?yGEBrYBZdHJl2C+lfil49t7I4OGHOU3/YlIO1tU+8R6WRWScWljrKnqJI2Tl?=
 =?us-ascii?Q?p2MFIZSAaqrN1aR9Hptwd6an?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3101.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b614f6ef-38d3-4f8f-cd1b-08d8e8e3ed2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2021 01:28:10.6327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y69a9FRFRCzhumhcQrUjIU4IfgGyTADlhIlQYhHgk3iwDezSCKPLbLhbyYGPzKiaEReRq2lokX/gcUDppiDLbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2640
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [Patch v5 16/18] iavf: Support IPv6 Flow
 Director filters
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
Cc: "Liang, Cunming" <cunming.liang@intel.com>, "Zhang,
 Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Wang, Haiyue <haiyue.wang@intel.com>
> Sent: March 17, 2021 0:31
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming
> <cunming.liang@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Chen, BoX C <box.c.chen@intel.com>
> Subject: RE: [Patch v5 16/18] iavf: Support IPv6 Flow Director filters
> 
> > -----Original Message-----
> > From: Wang, Haiyue <haiyue.wang@intel.com>
> > Sent: Tuesday, March 9, 2021 11:08
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Liang, Cunming
> > <cunming.liang@intel.com>; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Wang, Haiyue <haiyue.wang@intel.com>
> > Subject: [Patch v5 16/18] iavf: Support IPv6 Flow Director filters
> >
> > Support the addition and deletion of IPv6 filters.
> >
> > Supported fields are: src-ip, dst-ip, src-port, dst-port and l4proto
> > Supported flow-types are: tcp6, udp6, sctp6, ip6, ah6, esp6
> >
> > Example usage:
> > ethtool -N ens787f0v0 flow-type tcp6 src-ip 2001::2 \
> >   dst-ip CDCD:910A:2222:5498:8475:1111:3900:2020 \
> >   tclass 1 src-port 22 dst-port 23 action 7
> >
> > L2TPv3 over IP with 'Session ID' 17:
> > ethtool -N ens787f0v0 flow-type ip6 l4proto 115 l4data 17 action 7
> >
> > Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> > ---
> >  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 122 ++++++++++++++++++
> >  drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 111 ++++++++++++++++
> >  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  13 ++
> >  3 files changed, 246 insertions(+)
> >
> 
> Re-send to Bo, as a new member.
> 

Tested-by: Chen Bo <BoX.C.Chen@intel.com>

BRs,
Chen Bo

> > --
> > 2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
