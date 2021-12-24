Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2273247F095
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Dec 2021 19:36:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E5A160B71;
	Fri, 24 Dec 2021 18:35:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zy0q1U2C2pgy; Fri, 24 Dec 2021 18:35:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4D37607B0;
	Fri, 24 Dec 2021 18:35:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DCCB51BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 18:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C4FB94048F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 18:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id muj1dwEG_QRK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Dec 2021 18:35:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D6D040447
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Dec 2021 18:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640370951; x=1671906951;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=J5OuzrL+B/Q4ZmdbD57aHKXLDRuN/ypfNJLFxh/83JA=;
 b=Ppcs25/4T3kNo1AgaQmX9JXTszYKst0q+3iSnGF5wx4yEYHDQa8I2+WL
 aMVWSW5QqNdcQvohbTqKFUnCZPgZxif5IY/N9v4V7UQsWFir0wBqKhl69
 PCH6vLdGgelCO2bWwBuSUIGZvSlY3X/6IXOTQMd+nNDZd4C9mKQ2LS9aj
 nyqJKedmSd5InWZmJJoJMD/O1C3GmPWZj+K44kF2BDt4haj6XBN2P+Rbh
 jEeOep8tL5oQj+pYFOhcr3fvU7B5JwBFYByG2MF7HGlyjDJMfXYEvTmF2
 F2SkQglvH9X58dCN7ekDA3Ljk+hztkDuRkj7RW8YStYEAyQXi030UCvoX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10208"; a="228298216"
X-IronPort-AV: E=Sophos;i="5.88,233,1635231600"; d="scan'208";a="228298216"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2021 10:35:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,233,1635231600"; d="scan'208";a="614572923"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 24 Dec 2021 10:35:50 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 24 Dec 2021 10:35:49 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 24 Dec 2021 10:35:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 24 Dec 2021 10:35:49 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 24 Dec 2021 10:35:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b2NHXJ5iDGbnKbMS7dS99v2nlVJJkOQzUxm6O0zowyH4aLefvZQITn1hbnPzLScH/ZAWYW/Fz5/gmPCwlLIyMmQEf7cI4NUY9cV06sEY7WPxquR07tjzUe1E3++djPlvu02mN5S9c17N9f2zkvprLol8IahwXCTclin2d3WaHSy71O3YV4WEUs4+ZNl+RbS5xMGFJ5CsJQt7TztVDkNxMXGKsjaDQoadRg7KZwf2SruR2g+J/Lb2Hf8YsQAsK9qZ9aXk8UabP5YA89U0rOk2qYfNx2lN9EGvhYVFPeDYQtlx0VzWmNU8NrKHXFZa8ltukHviUcXiqPN6Lb/xPzQH2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rBNE3X930LVugWcb5l9wJFqMEPzbdpMZ+dOFQuQkSwI=;
 b=SXqKpj9TR2FnnQ8JvNXJixF9xaZgBc0hLEFGUDHIN9zkiLQR4cagdVimdSEHR8lfcqLUJejd/xROWaN0RVXSgIRDEp7xQB0bVgDNQbXfFwiKWRiqC9cyWxT8+md3wyxlwegTASb4wV37JhU3C20JJByA84KXub8XcUbHq/vIVRvurMP7Xz+e2VIV3Ueqn+v9YlcqqC45oSN72eBKaD/Q1+M13UrRzOVuxx34e3ur9gI6LuVR64PSVEA4/YT2hTrcTT0Do/GZ1oHwwHA22uXEsM7mPDrHaNkYT51Yp2ZFFUt2aZ7tnxSPk3EaSVVXH4Q0jvMho/udQvl7TyU4jXsZnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB4861.namprd11.prod.outlook.com (2603:10b6:a03:2ac::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.18; Fri, 24 Dec
 2021 18:35:25 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%5]) with mapi id 15.20.4823.021; Fri, 24 Dec 2021
 18:35:25 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 07/14] ice: Adjust naming
 for inner VLAN operations
Thread-Index: AQHX55uRsmUEeJDu+Ei/qXY1x9DWI6xCGqJA
Date: Fri, 24 Dec 2021 18:35:24 +0000
Message-ID: <BYAPR11MB3367640562D9C161D75DEAEEFC7F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-7-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07b0df99-0d9c-4c49-e4cd-08d9c70c269d
x-ms-traffictypediagnostic: SJ0PR11MB4861:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB4861978F26F9349C291E8483FC7F9@SJ0PR11MB4861.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AJRHfkA9FB43Rvq1hHNBcapMKdKHWRQ05NWzHLz0OH8pi4uiSgPB/4RiUak1XvXbbLhyJDAPedBqiCPN7ZTHt0F8Y4X8Bmx8wTX2wKPW+KkQJmChnElvD79DukvNS1WCWCeMhsy324csrcSPMVKvM2YOr0So45Dhx1pDP2YycqCcqGSTlXDsGfSk3NeOlZM0TA9b3Q40lWulaBp99h+Gtkz6uzuiph8CUhNqFW1mNLXuwi/DzFMi6j/OGjMponfUfooAjX1yMH4Q/bgKaWQSeXREoZ9BBtH9xgdfnvhrUXNIg3NfWZHP24/Va4z9ys5o+j2CuSxhTAytrs7qGcqoLp9ubY+cHP4jz9FN2ro3nGP8EmgBG+sQz5DdhpA+KiTTarFKNKN6cKm6nABRUI/8tQ4dmkNriml4PqY66EMrNVMzGc9B/klLJqmr5TFjyTPbAeloohyBXQ+hkkAGEeTXKy0u+fgx8uaINUpzdY1tJLQvbjQV9EUYY1ShfA/sObi/vklR2lP9iL5ykpULbVz1Vcxfb3hZiP9TDuWWp1cTSOS/IiUx3Cc+E84bPLmHegH8tQi0fy3hfbc01RKpv8Kaf0sKb++vKEj6OZELzL7iK03LpER4wj+n49l4HK8VtDl2fQHfoGjCFH18msEEHOXhNi+ubf3UIn5mYvIeemN0T7hKlkGDGEQRqe3nT/BckhOd/Uy+snWhhr5k575SevUiOA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(52536014)(66946007)(71200400001)(9686003)(66556008)(64756008)(66446008)(66476007)(6506007)(5660300002)(186003)(76116006)(26005)(53546011)(7696005)(83380400001)(8936002)(508600001)(8676002)(110136005)(82960400001)(122000001)(38070700005)(33656002)(316002)(86362001)(2906002)(55016003)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lyZNMqqAeUjuWgBrzeqE4EXjbalhkXtJeUo+0ZI47OLGfMX1mQxC3vcyiUr+?=
 =?us-ascii?Q?JwESrgcWc7U+WI/hLiKc+yK3DjrXOYUMf7gSjLv3vYCf5CQnkI6df7VGRJeV?=
 =?us-ascii?Q?P9hutiADyFgVmx2mIflJaO0B1DD3OWvlWX0B6oSLgw3bf0vWmwvUcdWzFS+u?=
 =?us-ascii?Q?lW3/OL59joDq8OEX1mBlWnF2ODTSszeHqNi9Ubxb9ktL7+yppwtxbMvWEnW/?=
 =?us-ascii?Q?JBhXF52EOaMhidkPHwmxXXO4shb4IM347DjX/nVBq9UznC98mMJoZpIP8ZPk?=
 =?us-ascii?Q?Y4/2EtCwx20KrJako+g4HPVKkdrlW6TwoqoAjb1QM/59MjYVjs1+NBq9AO6G?=
 =?us-ascii?Q?+JNw4SyaKy2yYnL7cI7xLkFtbIECmSAYH/8f+8mvC44Go97NFECTQH2C4+kv?=
 =?us-ascii?Q?X4B3NTeSlq4E8BNd7Bv2jXE0Bezq4NsncouUq+AWQDrDEAWkbQf2Y5n7CCqN?=
 =?us-ascii?Q?KZejQxb4YwUCOLxVnVSs97E6Fxv7mlSnb33muCvBjjY6KKLrEN3cfQTig4aw?=
 =?us-ascii?Q?jWjwR6AEeyaqEr068Dtya/kOBSYs1K6qUsRFpUUrYJIEWos+Slc/+T0YUFRd?=
 =?us-ascii?Q?wzCrGw+5iLvJ82uitkz/Yk22byb2im74Wa0F30kJJs8Ni3UMNGGKy1qwjJzX?=
 =?us-ascii?Q?DnTQi2kIWmDUiB96ewfPgMTw7nmAOUCQ3ZUkwZqZurqgI+bhnycWRfk+P6ky?=
 =?us-ascii?Q?ljYZU4vquOKwQBO2xYFp1gsoHcbQ6xyu15IPtZQRg9voSV1urLS/AK9Vwc7h?=
 =?us-ascii?Q?eZTuGK1TxhDwkxTF4G5nu+YPNQyjCMVPxj6ex49fxaEo53QSRvjAI33vxRwT?=
 =?us-ascii?Q?TsvgObux4ZVj//hn9Z+sG/Uvv8YmfIguCtPwykloFOohGnwVJUN9RkfOkkeM?=
 =?us-ascii?Q?bYdKjdWUK0WF0pqmLMOJy7ActENUiwio9CI8E0fZHv/x+kvfbFKDzCVSmNZE?=
 =?us-ascii?Q?vXhLll5Knk4AED+wd9MYp/4bNPL/VjZ4v+9bTd4SFuknr0az7Ratzhy0dZ8E?=
 =?us-ascii?Q?IyKEp93mEg3IyTVNYg2Q40XwQY9fs1nqfsW+fPy2FCWjdpc30L1BPykufdeb?=
 =?us-ascii?Q?3fNPWk5D4tF0JioP/apuoyDmzhsl0umngDMvFXSo25iB6LbujX3bwoPWfkfZ?=
 =?us-ascii?Q?k7QWS93LxA8CcJ6tHGzNfQGwNCUwXXAq1R248RAMojk+Hry37OGo1KlLXMUO?=
 =?us-ascii?Q?5qCTDy6GghJA2uMdt5ObDIdJVNjVfmwH5e52v+yk4ki4P/MspYY7HeFxTJjN?=
 =?us-ascii?Q?A9L6VAXsbpe52jyWkIJ2QJDGymnJdIZi6yFs8a4BnmOHTofcf7S3Ee8ubKnJ?=
 =?us-ascii?Q?i4VKUVRfQsQjHl/lLlkXhu/IR7bxc5HTa1y6lCW2SB2/lCQI7LGFDvoockKZ?=
 =?us-ascii?Q?T0k6ZjraMF+fgnafKwofvx4vaYciErekRlEKKVg2JXz1lxRBcB+zOo/+lCG6?=
 =?us-ascii?Q?YfaiI0JXkNn+7l8a6Qv6ZyTiaV8Fh90eAI73zeAqHDbCE02YN/6//Fa73H+I?=
 =?us-ascii?Q?cOO1p5q9eHhLivXd6JbTpeNX/oexM7EFNkr6h4r4HYpIN5aD/iNmC/Ochxno?=
 =?us-ascii?Q?DCBLdETR5J2WMERSlGFeyO5GyuyeEMis46xSuMU53pOKh/ylTIrppkMkbbYr?=
 =?us-ascii?Q?7Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07b0df99-0d9c-4c49-e4cd-08d9c70c269d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Dec 2021 18:35:25.0115 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RtLDYoeUZXyAjqK6ds+EyIDjX/iT5B3dv3lKxqsE4LNg8ZoDRas/7L06tuVjSsY8dBYu7AmAkfWzv967vPaFgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4861
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 07/14] ice: Adjust naming
 for inner VLAN operations
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Thursday, December 2, 2021 10:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 07/14] ice: Adjust naming for
> inner VLAN operations
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Current operations act on inner VLAN fields. To support double VLAN, outer
> VLAN operations and functions will be implemented. Add the "inner" naming to
> existing VLAN operations to distinguish them from the upcoming outer values
> and functions. Some spacing adjustments are made to align values.
> 
> Note that the inner is not talking about a tunneled VLAN, but the second VLAN
> in the packet. For SVM the driver uses inner or single VLAN filtering and
> offloads and in Double VLAN Mode the driver uses the inner filtering and
> offloads for SR-IOV VFs in port VLANs in order to support offloading the guest
> VLAN while a port VLAN is configured.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 191 +++++++++---------
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   8 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
>  .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c |  57 +++---
> .../net/ethernet/intel/ice/ice_vsi_vlan_lib.h |  10 +-
> .../net/ethernet/intel/ice/ice_vsi_vlan_ops.c |  10 +-
>  6 files changed, 140 insertions(+), 142 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
