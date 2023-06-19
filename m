Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1724734B2F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 06:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63FD181444;
	Mon, 19 Jun 2023 04:53:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63FD181444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687150436;
	bh=oPRq8Ko61wt/Rcxxl8eHXK9cqt5nTXIQHQoOnp7urQw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ANIZJ3zDHW5SzSemMHxHxRwvg3owgPkw5uB2fhgeNrIQFzmhvJ+jw/m/iqKuc7qsU
	 WKoM2ks9x9jsP4s0Be4n4tEAlzqlgKd3p2OZFe4mCWroE2SoctQbilTM12l6J0jlOl
	 VDkx4xV0utgajpYZszI/uGO9i6a1JD7nF/OMSuMic3ibs4Ty/7aCdNsR6/EqetzG1O
	 HoORA6ZND5SAJ0k0NIETG1mJBWjhtoekZvsQbEefkqOHMT6o4hwVZCn6uNhNEM4pQp
	 dyssBYwc1So1tANNV4Znz65UmWKrD6KcNADLd8Sb743ko0rdpkQQAZHxCB5EmRqA9+
	 Mg2+HyUskm52A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2VmeuScK8oIq; Mon, 19 Jun 2023 04:53:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B69881389;
	Mon, 19 Jun 2023 04:53:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B69881389
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3DB131BF28A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 04:53:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C76F404C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 04:53:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C76F404C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b9oGvPLlzj50 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 04:53:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E36D400DA
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E36D400DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 04:53:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="344288917"
X-IronPort-AV: E=Sophos;i="6.00,253,1681196400"; d="scan'208";a="344288917"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2023 21:53:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="858080691"
X-IronPort-AV: E=Sophos;i="6.00,253,1681196400"; d="scan'208";a="858080691"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2023 21:53:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 18 Jun 2023 21:53:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 18 Jun 2023 21:53:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 18 Jun 2023 21:53:38 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 18 Jun 2023 21:53:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FAHgb4Et/yQ4wFi8oGmc1/wjchW55uzCmOND/wbW1FKV5AWBZltWMIOm8JKZonT/Avlo50nJXR7dDDFCoBn1bN7osZDEhotHFGhGW/whDutgxceKvnrsj3MM9lvfQkaBpLhRunILPAfBttnVRJzItDx9s4q7mcdoYjPjFWPqe+xxkqr2S9LPV7fS+ZFwG4FnitSueUPEy1dyMkYpdh1oEoZAgHfGgsfHl1ynFt2ppCv9lREVo6egDOeRI+Fnre3BfHfTBFZNyhxOvbEC4Rl4HdlXVZVIXq6uR313kv1fQWte5/7X/+ZZCVKTGl2le6PAPKRUZy7XdYeEyHMWFOg5PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JLef8MfIdu9WoFQzvmVQrhjYHgU5a1OZMlL71P5tUfs=;
 b=MYcOaABByYhbbgORZtX6ryRYIlqVMkvR39s2GNU30JzabRFHxS0tp5WRCdd9BXvLHMhsrcf0oziOZGcOqQJhDJsbGZpW4hZ3t4Qn+GxeFfajRGQZ2zBaunS8VuQq9XY3X/Ys/rg02CnapZ21JoKu3fy4Ii0Avb1Vyf8YG2hapg92ZOWFG4FhwKuW8nwU8D9TwdBBL1JBUASdX+XOmABkCPbODWJc669A825pfENmqSbb6puptNU0ei5+faSHvGu1RemOoT3aPtcPe0XUeMeCE0WXB/EYkH2dWZByLZz3J6USLkS9J8C9hcIDrAAOQWOd2QodCZzpGn4l8aadGz+s+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by BY1PR11MB8055.namprd11.prod.outlook.com (2603:10b6:a03:530::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.42; Mon, 19 Jun
 2023 04:53:36 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::304c:a71b:3375:5095]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::304c:a71b:3375:5095%5]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 04:53:36 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Deb, Shekhar" <shekhar.deb@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v3 linux-firmware] ice: update ice DDP
 wireless_edge package to 1.3.10.0
Thread-Index: AQHZn3i47JH910gQXES/f1lF9RrOqa+Rk+1Q
Date: Mon, 19 Jun 2023 04:53:35 +0000
Message-ID: <BL0PR11MB3122AAE5DB03670019253E2DBD5FA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230615110004.2485977-1-shekhar.deb@intel.com>
In-Reply-To: <20230615110004.2485977-1-shekhar.deb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|BY1PR11MB8055:EE_
x-ms-office365-filtering-correlation-id: ed1799e0-4f11-4aa1-20bf-08db708123fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a8cYvdfIGOaf/ue/ImLGR3/Cq6jDVfjh7MkGaPax7jRpaRSTznzG37zpojvzcGU6n1zUCpW9r8T57/G+m9UjiNaZDk+Ibr7/o7raBvP2i5LMIWpJv1f+sECqbDvNRCB6tso/C0lz+3lbm2ngQaAmNH9yui12f8Xm8RcvlOjq4IqpbLNiuw8FwK7wYSOm1UXPvT7jfioQ1iVlmqhzKUff6IUbiQVwS1YiWYGp8GOOelUGYf1e3U8fG74fSKF16aE8Qt6B0444X4CBsTJgVS4HZtgKplzo6ygfX8r4T2SH6s7KzJRXQq+yeF6Ca5tXIPfmQvsJBM4pvSu0w0KcEGkhP/TZDXE+kzd1kCJ3Y4x1FN6QApcYB75QeeX8nALUOZhx3mQyDTMobD8aqxNGKiw7Pw8XTM8VuHHboElml+HE5amNjhzsEVKaw1oYrCVDZD0/i+LMFkfkDKQbOdPzWI/gG/C5oODprUrv/i1XeSO+bQznA+lIqPm38RtiWSCaeqK11RVbuRLL/WslsiFZjIMVwInXoM6BJFYrM5htvuUqQAPaM88t+TH2b1yN/pRCu8ZoAoLAIx/UdrokCd2vtc2GMQGtIuDKCa2doeXOFZWl5IuQIDgOkmBWiy7rsE6bK9mO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(39860400002)(346002)(376002)(396003)(451199021)(83380400001)(82960400001)(33656002)(38100700002)(55016003)(122000001)(38070700005)(86362001)(478600001)(4326008)(110136005)(71200400001)(76116006)(7696005)(8676002)(66476007)(66556008)(5660300002)(52536014)(66446008)(66946007)(64756008)(15650500001)(2906002)(8936002)(316002)(53546011)(186003)(107886003)(6506007)(6636002)(41300700001)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CnbsyvXXVhVxmekYBkRy0R6M7VLgR5rvpvCMSfDeUalDABngld+6r7qcFwPy?=
 =?us-ascii?Q?1rDYHhELoDoYZwE2is0jSy5DNvQOl6mkSDBp5I4w8PiqHT9zAxcPYNm8TQlU?=
 =?us-ascii?Q?ERVgmXVf8EaeLgqLoO/+UWwY1fAUEPkuWR0QBflic+B8XLKc297VHremo9Cs?=
 =?us-ascii?Q?dFKXVQSTfUQ86NWQAp2NPVJBQ2c0fdPQRcIYYMSvLL+unYaVOW1k+vjrpI8p?=
 =?us-ascii?Q?myCHauFMEtyheQbtnz0JT11SnoFvNUAZa3K/+oa+YHo1Ohi9rxFiuINwcrR3?=
 =?us-ascii?Q?Rz44hjkcMJc3+unXVfLVI6cDg8CVg04ERALJmi0WhS1Gn4FehDfgPnGlNCRi?=
 =?us-ascii?Q?UT2V9KqpPEiDC7EMW/I/cVtE4nvAboe5N6z4ZPU+t8LazICAlonO9oRxydhS?=
 =?us-ascii?Q?SFPIO2YZI8sG1R+wzAAYNRDZIYfaBWd5WdavQPKkXbe+42w5GwAkA0YuFCbO?=
 =?us-ascii?Q?3UnXZNrJYca8BjKACxq3FYaFIp2ZV+zXRs4rKi4aGdXHR49gOSFRdHN3VjU1?=
 =?us-ascii?Q?022aOlEDTazPV76tdoHw9gtphhYp3m0zTPCBjqaAUqWk3NPZ3oimEEf82Tpr?=
 =?us-ascii?Q?4I+AGiwAs8CxSzxVaIzQpZpKdNiyjbG+eCX1yGwIW/LdTTgNkbYHJqJk3M/a?=
 =?us-ascii?Q?l81oVWDpsQAitQQp6eFpl82L4gSUImbqq3ctd3AAQfBrTZvQWbaLLVYjCf8S?=
 =?us-ascii?Q?FZCrX4VtoGoC58Tb1h8O8YdVKTTo5FuNUeKVf5TlRRAk/3FhYWZ7xdDAYBv7?=
 =?us-ascii?Q?ocPS8+Ngxq2A2XW0E3z8ZCNEujH8U8FxwY0ZF9prdxWP4+lDxgYWnXVRRfO9?=
 =?us-ascii?Q?jp/E+7qeD0xq5o7ltZzxfjrcJ0lXW+lE76UKgflY2IBjDUewAKY8vEt3xBmw?=
 =?us-ascii?Q?7SgLqMiRkxRnu9R+3fdI+6EETFm/B0w46ISRVwoIPa0JT40C1fPJIkeYpGMh?=
 =?us-ascii?Q?APfD+m5ASmJjaHAmdga5iEYNjs1dySlPLo5stz2cJHGTPoeACXvKxdsSjSJj?=
 =?us-ascii?Q?QKmho3/4CuzlW65p+fPm1QzOamkvf6FsCgrlxOw1HjDyDCdbE7u1Ozc8u6tu?=
 =?us-ascii?Q?nlP7cQB9PDWz+jtxjx4f7K46sCHVhsQHz1X+H8kN/MbpPjVk4yecew2UHKXT?=
 =?us-ascii?Q?LdR/iYBw+3V7yEtLr14m/tPdIs00Uo/Z7a8ySTFrJpNCA9kwQqJJcFO428Ps?=
 =?us-ascii?Q?RvTmZVkdJxKabgtz97RS3g/+fjiLOuh05DR83YARCT54gXl+hJq21lGkp8PU?=
 =?us-ascii?Q?Vwa2vMFRE/vnRNH5UVRFi3m3DWniNkDIvixlBk0Co/x1vWgY5CFDlN5UoC08?=
 =?us-ascii?Q?4f4mIp5RSKGAmub8w3cNpTFFapMhZ4qmt9whPO9YVnudnVmDkA8KWl5yvsPR?=
 =?us-ascii?Q?W04hzCLDXJE5y3SlYDroJqQHcW+192GxMIsg2CY4spLjMk5D+u/kYJirMZg+?=
 =?us-ascii?Q?BTyHJmHdVDFCxOWJ+/PF3QjxK/sY+9thM90bqSI7DUL1bOnzRlzwPUXxbPuO?=
 =?us-ascii?Q?gLKhxtGli/Ne0P0o7gKLoS32L6vhCjNtKxMk+MmywZWgBhbA/dAQZ6Dhpy7p?=
 =?us-ascii?Q?HfL4GOfvStytyX/IWs2+ZWew21SrpciNNVTguMYNwmpW+USwI8ubEBN6vAoB?=
 =?us-ascii?Q?wQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed1799e0-4f11-4aa1-20bf-08db708123fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 04:53:35.9641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z1HRouaUPdntUX2t2RWDuvWuwX/LdADVUHlEciQYqlWt1eB6r3dzj+pLbKhvOf+DI76/ZdtL+hERL9CFCQi/pOvNgBVQK3UV7nguHjOS/+6tio6G+/4TFQ3wDhQHYwG8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8055
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687150429; x=1718686429;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x3MpR85o/MMcuv0ZpqKJJD5sCvsHBeyNrLzpF0ZXZrc=;
 b=Q9kTPwOxS+R6J9QC3YyuYk9Xa+e/CUDbU6XTaERONKkeycxl9TJ4Pc/R
 19YEiYzSzdR4jyuGTYqFniu/S3ACX8cgfNjtSTsXxju3c4qSd8fc/YP4H
 0QzW1u8a+gE3kK8VAM1nuw2uVYSdiKo1Wc+nAW0DhQ5wMRMZXg10zt/o1
 oPIGmCLdBu3JJr9srmBNFyW/AZcah2xpNfXWlF31KhM7X6qWh4P7A/Uku
 +Rg8JvIpUZId5zRCxZurixmy4gDSEM5jE4TwaPKiUht4pDo7s1NJQw9mr
 WBXDbYYvEMmhfDRGWpfWEc44fXSVkETsFYx7G5F3wPeecVT0iknXN0I8m
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q9kTPwOx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 linux-firmware] ice: update ice DDP
 wireless_edge package to 1.3.10.0
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
Cc: "Deb, Shekhar" <shekhar.deb@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Shekhar Deb
> Sent: Thursday, June 15, 2023 4:30 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Deb, Shekhar <shekhar.deb@intel.com>
> Subject: [Intel-wired-lan] [PATCH v3 linux-firmware] ice: update ice DDP wireless_edge package to 1.3.10.0
>
> Update ice DDP wireless_edge package file to the latest version: 1.3.10.0
>
> Highlight of changes since 1.3.7.0:
>
> - Provide Separate IP Fragment Packet Type Groups for Receive Side Scaling (RSS)
> - Add support to allow Receive Side Scaling (RSS) and Flow Director (FD) on Multicast packets
>
> Signed-off-by: Shekhar Deb <shekhar.deb@intel.com>
> ---
> v1->v2: Updated/corrected git tree
> v2->v3: Updated changes from v1 to v2
>
> WHENCE                                        |   2 +-
> ...7.0.pkg => ice_wireless_edge-1.3.10.0.pkg} | Bin 717176 -> 725428 bytes
> 2 files changed, 1 insertion(+), 1 deletion(-)  rename intel/ice/ddp-wireless_edge/{ice_wireless_edge-1.3.7.0.pkg => ice_wireless_edge-1.3.10.0.pkg} (77%)
>
> diff --git a/WHENCE b/WHENCE
> index 265cfec6..e14baef2 100644
> --- a/WHENCE
> +++ b/WHENCE
> @@ -5810,7 +5810,7 @@ Link: intel/ice/ddp/ice.pkg -> ice-1.3.30.0.pkg
> License: Redistributable. See LICENSE.ice for details
>
> File: intel/ice/ddp-comms/ice_comms-1.3.40.0.pkg
> -File: intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.7.0.pkg
> +File: intel/ice/ddp-wireless_edge/ice_wireless_edge-1.3.10.0.pkg
>
> License: Redistributable. See LICENSE.ice_enhanced for details
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
