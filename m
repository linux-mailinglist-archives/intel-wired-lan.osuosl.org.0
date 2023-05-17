Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C674A706479
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 11:46:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51AC1402BC;
	Wed, 17 May 2023 09:46:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51AC1402BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684316772;
	bh=i/yV/BF1ctJz4uG1p6ytfIy850RVgHYjYgBnZadHTnc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TnK9OY92DkPZfVkWXmrkMJJBdn2suMV0ezqXez17kynqq5uCBBbG/JXTWyn/iemex
	 KC7iMDnuDm6zXstIfbBTMk6xSx2TCem2RgEantJWYwqLPPxm2733iupF1wb9DvvBOP
	 ZEUQGaRy274dC2HWXdbZh4NgzW4kGijmo+zsXY8OWS3jk3bsvXeNvHkTBk1+zJPKQf
	 /I5n3dTy+MXiFfUE8sHUSRU/vEsuLDBMl2AFkH9AIbwS8us5cOEZmruKZgyeyuQlNy
	 y9pimv0cOvT7ojy5Y9jrrZ1DdNjadrAyHHDTXC7kKUahw7tY1aB8K0YNmZfq1duqin
	 yAM4H/uxqQJog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNTJyx2zlz6R; Wed, 17 May 2023 09:46:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AD8140220;
	Wed, 17 May 2023 09:46:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AD8140220
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F80A1BF584
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 53F434170E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 53F434170E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NaXqNC2VF5yr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 09:46:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8827C416CE
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8827C416CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 09:46:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="332076191"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="332076191"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 02:46:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="734626591"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="734626591"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2023 02:46:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 02:46:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 02:46:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 17 May 2023 02:46:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 17 May 2023 02:46:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lV/eWC73d5+++xWGuT1xriz5/xApCj2woB8kYgOSZBzUDW52K4zEGVPW0Kyf/kmr9t2zgptZiaNBsP9eEivl2vJf0akbrpAxpJWwCVncAnfmY7m8mWMMuELFN6LvGW19u4O1MyoTHJB32Xs1b7CbwGdSbGbR0vCBwH2mvQeRq2niCWFMFj8QT1jn0M4N0Wu3GoviU0ousb5KRuCOIwSKyAnaf/1eqR5GuAIko4YXcfCP5jKz7bnYm0q7whgNLsx6H5hOPKlA7vFzTW0vcObY4RJjWEKrpqDpdggit0q5KH1y6zkSNrL0zleV6t/yYbLaol9j9bv4zU03Hvz8jRYN/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gvzPBWluCnnjewczVR7Yf7gOYOJY3Om2bmDe+KF0eVA=;
 b=lr/25iDIQz6FXhBJEyIpJuwEELulUvIMx3omh0bc1rsJG69hddO8yoiP90n/PHpYOpPvf+LPi+RAG+SRu2BCv06lh2dcpxWk/H1wCs25fW1akJkKd4IcSeyh6Ot8DOV7wRxjhVT8BNc3x1kaZwkjbTKwr0OECBqwj6NomNyspvPQQYGuQSIc7cgc++WgKyhsCE7kTnvnF6iae3FXp4aaG0E7xa6N+Wynln1+/A3I3joZGG6fFO4pzodDkxM0ofhLjjJClYD+VN4J6XFpT1cV+OXnJ4StEUPID8kSqrRGr99yp813L/+ql/S52Rw9W77178bI+JlOmJqkAojNiyUpYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CYYPR11MB8386.namprd11.prod.outlook.com (2603:10b6:930:bf::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Wed, 17 May
 2023 09:45:55 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::1029:7958:5ad6:bace%4]) with mapi id 15.20.6363.033; Wed, 17 May 2023
 09:45:55 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v11 1/5] ice: Support 5 layer
 topology
Thread-Index: AQHZXMAZpX56pe1XIUCY0YOyo8Ahya9eft6g
Date: Wed, 17 May 2023 09:45:55 +0000
Message-ID: <BL0PR11MB3122DAC0C7935504323FCB80BD7E9@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230322131227.244687-1-michal.wilczynski@intel.com>
 <20230322131227.244687-2-michal.wilczynski@intel.com>
In-Reply-To: <20230322131227.244687-2-michal.wilczynski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CYYPR11MB8386:EE_
x-ms-office365-filtering-correlation-id: c310ae45-97f7-4318-57f9-08db56bb82a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oHf9NoH+8WoQKkQRSI5Av3FR5ZEtLM7h6rwiL6skeuQTO7388DCxxXOcEo15p1/x8NJWS3Cq5HVd67alqs4ss0ktZ75inW5NAxvbSbeNDAfR645zl6kEwKwz6STLvi11CwqrUsfLsi3JxeZGCLFc7zCJutB9gXpjhoaDbtcneBMX+2qT0QT5LWKnKCAxtoH5bexldXMctkXkch0BA03Jo9ziIY2sT89KfGO7B8xHJ3vetfc8q64w3hCm4UGjs+cEWkKOJe/fNcbaWqxiw1mRvCiE49ZtQOqU/PEPBT/lFZRoCmxr94Gad4fexdTkT1NsrOP9naw/NHqM79XAwkm/GwyxGHMgB6EHmlfKsZguaF5lLL0GByIULyGgsHFScqeNtcF6t+W1H6bjPji8owHIQbDCv9VG4q6EY2eTlSsjuTyje0rMxHfJirnD0nNjMn1QYsCSKX3Mw+hXVIAQJelMH00akE5uzVyL04Vk5C4hMO4QIsauLObHGB5u37hm7GzCtlNKM0FZCQKGcYApPMRht2q1J0Y7PZaKtFHY9ii93d2duZB5DaYQCXayHkYifepWCNvCpXyZ459CbJz6qh0t99oxkcsbprP1AhFuvw/wsg5EquPD01ybh/Jk/FrVQjxR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199021)(5660300002)(52536014)(8676002)(8936002)(186003)(9686003)(6506007)(83380400001)(107886003)(53546011)(82960400001)(122000001)(38100700002)(26005)(38070700005)(7696005)(71200400001)(478600001)(33656002)(110136005)(55016003)(316002)(66476007)(66556008)(41300700001)(66446008)(66946007)(64756008)(86362001)(76116006)(4326008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?F0w9gYgHkHONvlC5XWKmUXTAOf4dh/2yoe0xWNrhiSrxUbTRsAxh0CNqH0vx?=
 =?us-ascii?Q?AGtZ/8ShaSMx8cgOgG0U6YjCnG7BV8YTZZBKoE9hY7xKaxTB2g/hYBqf7Hpj?=
 =?us-ascii?Q?i8lY8kCd0bDw8SUqki7TiHyfKe3f7AaSpfhMj+axb5w3SCUMnSWHs0QNHlZz?=
 =?us-ascii?Q?o9XjpetdP87PBw923M6T0ONgmaiIU2JAmPDJTQNsR6ano3aAjhf7zoN7263b?=
 =?us-ascii?Q?Vh9AJpsC9+EnxS0drs0y9PnjGeoCyVRj9NfUU/8sPanBLiEurIkqVDSmsSpd?=
 =?us-ascii?Q?bkVwTrZUgGPL91gyNw5Xyh4JfK71XgRLTWYuH+rdgklqon/0EuF2s+18Ie11?=
 =?us-ascii?Q?Lsltzstdjym+JIk3QEWQlkXbgNF4kG/CYpMbD4uPJ3KMhSHP5KGL9keMyWfu?=
 =?us-ascii?Q?jmcwjlpOMAOm+MftnVDse3A2WO+k/mXqYbTRUH/SbgPfGqVMiRCZ0MBmQCls?=
 =?us-ascii?Q?bZvwPrAQ+GG1fr7//85TdNTVLcU4BW9AgUjOZZsP3jqd0CaV2nGp9uezyQcW?=
 =?us-ascii?Q?YbCPKLS8Ql6JRSNojCmb6oMc/zc3abiREdVvuJ+C+Vv7J7s8Y3tKGq/+1iD1?=
 =?us-ascii?Q?Mi0iazyEak8hJkaL/6otmw1dy65rXrQRLJG3YBS2lOusWN/s1NiC4pWBEukn?=
 =?us-ascii?Q?0sYVd/kYRDpKFCR1vQSaDKZmecM9QCrscsisxlmfXoJDVnxopqhpO61eBeei?=
 =?us-ascii?Q?tR+s/VtDspGvl/udvhPrRvgxDmQycXfk40PdrKE16i00kGxt9aOeO3HtdWYr?=
 =?us-ascii?Q?dT/oxVPPCHDIdld4oEkWo2VTG0kPUaKNFKBTFSHfWU5aq6sw5h9GeLIkYskR?=
 =?us-ascii?Q?Ysj+2KFf3myTbZT66Ft80Up+elef+NQYWlY2qYl/GKWXslHcC5Ndt8Fx1CX5?=
 =?us-ascii?Q?bXaT3/Y8G1c/DVrk7JvgSN2OHezpbWMztjWd8ReG8DeyRlvPeEmuwXUhv4jR?=
 =?us-ascii?Q?zlMoL2zvQHZkInpn9LHYdOKjahJfZhb5Hs4Y/IvOZMgcmXbWfUa3Vf4AtEEb?=
 =?us-ascii?Q?od2vCW5luZbr/HhD0dDbJ0fs7UZuL3YF53zelCJ0ukmGau7kSav8lpyl/xZ0?=
 =?us-ascii?Q?I9SInbv/O+x/qr4UeD0d2pb4gOYHnpsFjKHnKbpugxqIW7aRG407T02QoSNN?=
 =?us-ascii?Q?3+NSpFtZ0zFBBK/XDDOoetN1DDjPXC/MGUcu4BZm82GLYwXTBuszMxA549XE?=
 =?us-ascii?Q?Eycf3vqUYcT/3EG5YgK3xwN1ykzWBhRrjvWYu2TM9ceOIXMhmdtJtAGhCv3X?=
 =?us-ascii?Q?BYGmb9dFv8EoMTZgHYE7I94Y3sjcsly55Hy6Y5BkZxosevtVjKoMYqRgBmnN?=
 =?us-ascii?Q?UgMvi0K3EPX9um08VBtVeHM6SocBMYpybKdUoUxTFF3BeKC0a9M9rHEy8Ghm?=
 =?us-ascii?Q?EddzMQBgw1CpXbOXCnbRs40Xh8MVHchfY/RfAFrpLe+IwyeUQs9CPKqQCuwu?=
 =?us-ascii?Q?18KXr12wJifodXTZSLNi/KYR0xY0VNmLkKdVORbdojK9y7j+PhFwz5DNIWma?=
 =?us-ascii?Q?bw+qOiUpsrZGfRRD06SDdvbrv71/CKqJQMis1XTvqWJMywdvT+YQJ/51iT4a?=
 =?us-ascii?Q?kRuJPSXv/6z4ieDiWuxQ7wBEBRL9gE8YKm4eYXJzvbM52qwykKUMdWUekLh5?=
 =?us-ascii?Q?IA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c310ae45-97f7-4318-57f9-08db56bb82a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2023 09:45:55.3406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y9fESZEMLCzpoeizNqrSEq/FLX4vKmflHkUa4tkY6kwYAGAC3bzsYmeTqgo6ZicqWJ9LUsu1o8PbnlRh0GCxBd1J5/ksad3AsHK68FDV7dmDkN1rUxuDrTUwist4US1u
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8386
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684316764; x=1715852764;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fy5SWyoakWsbd9lR9Qdi/pIzJyG4s9bowiRQ5Qrza/4=;
 b=blzr2DMkwyOHeFZ7mPM81OujUOALT6Lh9BL+ffWvqR8G/ZpDieugshI2
 h7LVtL7ZSV+gc2M7L7sahdq9m4c43WxMxe79xNZ2s2G9AWw4Z8+QAsOfA
 HU8HGXMnbtGRE20iIqy+05pI/NsOY0SO0F9zwffi5rLZO4eJbrufHab6Z
 x3BoKeKuGmsEG/9acLbqwHVdv4Z8K8FsgB1r51ToA4V2MvQesvp1wIzu0
 5TnLwLFm8eyXQMlK+jCaEtMzg1xWzsRJcwSMn8YJ+bLkpTV2MGXUf6QLK
 ALh/3jVbO9/AIxjFTRs7nA+zcKAax+0cB+bK1LZM4KsMFcLlBCgBqyhZr
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=blzr2DMk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v11 1/5] ice: Support 5 layer
 topology
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
Cc: "Raj, Victor" <victor.raj@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Wilczynski, Michal
> Sent: Wednesday, March 22, 2023 6:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Raj, Victor <victor.raj@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v11 1/5] ice: Support 5 layer topology
>
> From: Raj Victor <victor.raj@intel.com>
>
> There is a performance issue reported when the number of VSIs are not multiple of 8. This is caused due to the max children limitation per
> node(8) in 9 layer topology. The BW credits are shared evenly among the children by default. Assume one node has 8 children and the other has 1.
> The parent of these nodes share the BW credit equally among them.
> Apparently this causes a problem for the first node which has 8 children.
> The 9th VM get more BW credits than the first 8 VMs.
>
> Example:
>
> 1) With 8 VM's:
> for x in 0 1 2 3 4 5 6 7;
> do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
>
> tx_queue_0_packets: 23283027
> tx_queue_1_packets: 23292289
> tx_queue_2_packets: 23276136
> tx_queue_3_packets: 23279828
> tx_queue_4_packets: 23279828
> tx_queue_5_packets: 23279333
> tx_queue_6_packets: 23277745
> tx_queue_7_packets: 23279950
> tx_queue_8_packets: 0
>
> 2) With 9 VM's:
> for x in 0 1 2 3 4 5 6 7 8;
> do taskset -c ${x} netperf -P0 -H 172.68.169.125 &  sleep .1 ; done
>
> tx_queue_0_packets: 24163396
> tx_queue_1_packets: 24164623
> tx_queue_2_packets: 24163188
> tx_queue_3_packets: 24163701
> tx_queue_4_packets: 24163683
> tx_queue_5_packets: 24164668
> tx_queue_6_packets: 23327200
> tx_queue_7_packets: 24163853
> tx_queue_8_packets: 91101417
>
> So on average queue 8 statistics show that 3.7 times more packets were send there than to the other queues.
>
> The FW starting with version 3.20, has increased the max number of children per node by reducing the number of layers from 9 to 5. Reflect this on driver side.
>
> Signed-off-by: Raj Victor <victor.raj@intel.com>
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  22 ++
> drivers/net/ethernet/intel/ice/ice_common.c   |   6 +
> drivers/net/ethernet/intel/ice/ice_ddp.c      | 201 ++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_ddp.h      |   7 +-
> drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
> drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> 6 files changed, 238 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
