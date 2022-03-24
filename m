Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AA34E6060
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Mar 2022 09:33:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C7EF405CE;
	Thu, 24 Mar 2022 08:33:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Or1bjI6KjbB7; Thu, 24 Mar 2022 08:33:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 25229405CD;
	Thu, 24 Mar 2022 08:33:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 216C11BF3B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 08:33:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0EF5C40345
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 08:33:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RfiOhsQ7hC7a for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Mar 2022 08:33:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 116DB40336
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 08:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648110799; x=1679646799;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g/VWNcRgMndWRYXZJaePgZ5ygx4UIE3EsMXP2uTsrQE=;
 b=iZXzyL5Ipu60gUmQYTcVkJtZ98ctQLXT4NaCXoDX4HYM95c2MHhYh6w4
 UQ/n2Zt3oxkTaj1h7V6PXVRIJAMkW/LEB29GcwCMo5gN9FKja7gB/dnH0
 ntdIYrMaRwP4rbaYeu5Lhq03I9kRhODTnNFOMvE00eQu19k/TiMmRuFRY
 safYV6kG7+6/6a/SfpAl583IBZVudVcpPdycmJujkatXV7Nm9loBPpb1Y
 WsFcGJQfTrWCREENBLAhpbiYs4LwnX70CUQMZ7MsjwVvnH/kquJuz5QsJ
 zb6GUbnImDxzQLkdrtYU1yszsEAgagolnXLGg5evJSBTlJl66iodf0Wgl g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="240476919"
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="240476919"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 01:33:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,206,1643702400"; d="scan'208";a="825607870"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 24 Mar 2022 01:33:17 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 01:33:17 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 01:33:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 24 Mar 2022 01:33:17 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 24 Mar 2022 01:33:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mpiD98j7f19V3uIqwLvm6pF8JsGRcRYsnQoiKNpODAPjWCL9ORXiQnAYE1gXucr/pNi0sGzHn6RToL5CZ4wEFR1yrB2kpcRIn/sIaRoq5U0F6AfAF94svHOqNwzOLIGB7A8+lR1aasUDVPklmWalKQx4PKCtOIrzUSwwWSNUklLN0djaX5nP79u3R3qERQSgrCWr75eXcYO0mm6EqGqWYmGuFY4vXLCS4gNeN3FNmMFCynNiK8XHrpMAIRy5Bh5RMfFR0tjyd86rsQb6yRGNhalXVM7EtQ4xhjrd6ZC4JMo9Gikmz6qtzgxIvhQpfEpM590MTzqGU3WMQ4AxIL2wvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rp87dkhuKdT6rasuJv6oaSq6IQzGvw1shnpTpHzimUA=;
 b=bU3nYf1+QO0uypupzw1IimW9Xoo3f7Ye1Sqz8uL0dNZixiFi3mNDTbmNJAdiYwLqP5ZQT+/kxEKwKgAgPzC7U0geEvCyOf9Vpuvg83gYBgIHL7avnrILQfwFNSLsfakrPsDkeVLr5FYuVZMchnVQXACKABnuCuWV8ef+zIKxIVQQ4ZnYnsLEz7ALOfPWS11bVH6DgE9onmCSkc+1CR1a+16DDBEhH7IqfdEjsMzU/Qm012fj+8f50vJ4yKyAGCH8oJ1DTeG8QbBn/CPAAKVDwFUwad5qR2uuHjvAVnO/wEQA93gLqIzFBa7gL1vJ9djOPL0Kv46RGAX1VEH1bsfHrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH0PR11MB5233.namprd11.prod.outlook.com (2603:10b6:610:e0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.17; Thu, 24 Mar
 2022 08:33:15 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::8113:f21a:30e7:26db]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::8113:f21a:30e7:26db%4]) with mapi id 15.20.5081.022; Thu, 24 Mar 2022
 08:33:14 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Joe Damato <jdamato@fastly.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [next-queue v2] i40e: Add support for MPLS + TSO
Thread-Index: AQHYLp5KMSlYtozp00q7JPKA0uoZM6zOVjIQ
Date: Thu, 24 Mar 2022 08:33:14 +0000
Message-ID: <BYAPR11MB3367A2FF3FE31B56602F16F6FC199@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1646270947-92954-1-git-send-email-jdamato@fastly.com>
In-Reply-To: <1646270947-92954-1-git-send-email-jdamato@fastly.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59ca083b-f986-423f-3175-08da0d70f03d
x-ms-traffictypediagnostic: CH0PR11MB5233:EE_
x-microsoft-antispam-prvs: <CH0PR11MB523316C1A70A6B1028655E07FC199@CH0PR11MB5233.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BPMqbv/mkUcY5VdVCeCb66Ist/q/2qVjafTUUjEu2qfkgfrqT3/LgtsnpSqbT70Fflf80sUti9Sqi9paaiUthNZ24UwM+bfICuY0m5XVcmQSRJO9FGH0Jp2eQVVH5ROZV6/SnJqxvVUs5g4Etw7/tKYQ6gW9gwU967gRfIs/XZBNS2PTQwJjb5/ffJHI2DDlEjmTGZufQdZhxEDo3sDcwLEzyP8femWchC6sMeDgN2ejngVRMPjJBgX2njlcf0bXeeyIJB6Luw14oAnHL9YsAM5D7WeW++euL+xyigVPW611Fh5OYpNeu1SYEbIzbworNfvcUG7sBTuSEaJS/u+j33g6Nfb2RRRJnruqmZbeq8aKBlyOTuhM/QyXan5+uZ5jinuMhNQ+wxlSt4GusMhCazAbSaQCDnW4hSv2nKeemSRceb8G9r+UKzKFo6SewP+oZRqh1rmbirdk/aRia4stDsiB785edWD1FRSsroL8kk4oHpvWP2+9Npk+/vmuSsBaURu18NVGLaB50yb5aO7me8m7uQpsx8GYuXh/hIBG5R6/Ypv8dY0MwEmsCCbLYtGdr+tAGKRcl38zkaWm2e2YHPBF8ZnyDs1UTXkmoHtKm/UjedZgtzaHbhUe3X0aba0LJ/ANvI857TgH528DYRrhug1ANS8VhXoiGuRnHTk1bf0hczNl31iKVyXNnauTeGuuKrNuAsFaTQUyUORMq9pBRQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(52536014)(316002)(64756008)(8936002)(76116006)(55016003)(66476007)(66556008)(8676002)(66446008)(5660300002)(2906002)(83380400001)(110136005)(38100700002)(66946007)(38070700005)(33656002)(122000001)(7696005)(82960400001)(6506007)(86362001)(71200400001)(53546011)(9686003)(508600001)(186003)(26005)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/2Ut4okdbe37b16wJj2MgqPq7azNcsD63wxu+QxtY4/B9zi3xR207wHddmg8?=
 =?us-ascii?Q?mh7lCR62Apiedbq7Vo6/PXjI5Yu5sv/anUcrfM2l5ACA9xuqD4tYaPau1wWF?=
 =?us-ascii?Q?uTaCVSLLw1L8CvEn2TLz/Bvphz0QnTo8sAQKionI/gMzVjoASYCRrEALvATe?=
 =?us-ascii?Q?J0oI6hERq+O3J3GLqh8zypjvRv0YTac6W1faxJTOoB2Fz5giWnHgN96RczpO?=
 =?us-ascii?Q?GzXWB/tvM0DMJC5p1R0GqS1ur8gn9IJ5kdns1Mh1kTAib8kZJB1N2fNd3ppy?=
 =?us-ascii?Q?4udQEIRJArTBjS0QcOmLYqqarq2ULZZMZG7zr78QhmpLOqj5lqeMt/aY7+EC?=
 =?us-ascii?Q?qkgWfBgixuYx51gXFkkixyfOgZ936nu3xnFf4NEQ84HbqWft63QVm1/tBvWY?=
 =?us-ascii?Q?tW0z6wm62ctGG9STMpJMxCGjdw80FkY4o9jIeQVUb2LvMO/mdx38pcMZeM0Z?=
 =?us-ascii?Q?pCowikr1uO+3GIjJKz77xwPRw2x1b+UVLX5vvPl6tALMrRhJejTE4zTQecQ4?=
 =?us-ascii?Q?3JGD1aJ/5IraStfbQZZ48o/5L2fUa0HvbS8jtSZDNeJ8Ef2j1povQ9G53eZy?=
 =?us-ascii?Q?bNylT238j/AzrbFOcHWNEnDDHXg3mNhltYgXc5duOq9JyO05xU+2EivSYfrQ?=
 =?us-ascii?Q?f4Yy6NxQWqBObChfzDCrur0XVaEXo401JhNcQKwepDk8AO7EhnA3xRYVU3EN?=
 =?us-ascii?Q?3BYStk3gw1Yq29n0DQE5AWWrOCyLYPXSLZaJKy+DDmn4URm/9kHJ4bliYXqa?=
 =?us-ascii?Q?P+dW2RcRYUpdtgPbnaA8XXOk7vjpfUh7qVTySY0MRYR3ScrrX5SjwbvapWBD?=
 =?us-ascii?Q?fiWbweyo/yxBoKn3r9XPQaHAEnY6irmDszDdOOYUdoLi6eot0yultjNzVM9u?=
 =?us-ascii?Q?Qg5GN+S7tgz01HHFcjirFjPNEAXlkxBKfMoWIeXT9mbHbqLXusUa9pvYU/Qs?=
 =?us-ascii?Q?owDbBNHfRqxv2hUVh2TqpYeShYrBDUHvgZ0xIcqVPWfGkG7Y0eiI1UvKgavu?=
 =?us-ascii?Q?QS7vxpOFs18Aohy5keVn7PnnPps7stvh0tcL4gGu8C3iSzfqB+jIV1vCkEyK?=
 =?us-ascii?Q?32GFzx3ezdixnVMywmp2Q7ceHnqC3SyXJwyV/99DjYDZer8A9xWb8YrUG8RY?=
 =?us-ascii?Q?bbmRBI4H211bgaZ+6w7Allk9YFIXrBvUyJi9rW4Sinbq1u+XKTe5h218IP7E?=
 =?us-ascii?Q?AxmLUuv+lV9CgOW8dxk6BWlvEKquPf/0EjnJrhILYeYUNvIs76mY40uE1hBz?=
 =?us-ascii?Q?mjhyfkHsKKgUJ60XI6V+I6B9PnwsGsU9paShciYutLc9RcLj5XkxEVCTCYGh?=
 =?us-ascii?Q?/5/hgWsfydycjn/FxzGOJIkVKcZXaB+WB9xhHCGf+aD9Z7Eqglt102tsAwRO?=
 =?us-ascii?Q?a2KK7xa77jCX0f5wY2p5ibd6HOFCpXljMWHbh+OSrIGzX0gbovUG2IhwaWbv?=
 =?us-ascii?Q?kcTZuwJXE25EwZKS8xcmQvobCPn7mChD?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59ca083b-f986-423f-3175-08da0d70f03d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2022 08:33:14.0324 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rKrjCgeYLVOTFQTHHZJPaXR9ml8qmTMlAzHUqEqNZW4DKEUXwvJZsYcSrmgY2Ez6UABh+NMLH/HNMp+Ow11v0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5233
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v2] i40e: Add support for MPLS +
 TSO
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
Cc: Mike Gallo <mgallo@fastly.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Joe Damato <jdamato@fastly.com>
> Sent: Thursday, March 3, 2022 6:59 AM
> To: jdamato@fastly.com; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; kuba@kernel.org; intel-wired-
> lan@lists.osuosl.org
> Cc: Mike Gallo <mgallo@fastly.com>
> Subject: [next-queue v2] i40e: Add support for MPLS + TSO
> 
> This change adds support for TSO of MPLS packets.
> 
> In my tests with tcpdump it seems to work. Note this test setup has a 9000
> byte MTU:
> 
> MPLS (label 100, exp 0, [S], ttl 64) IP srcip.50086 > dstip.1234:
>   Flags [P.], seq 593345:644401, ack 0, win 420,
>   options [nop,nop,TS val 45022534 ecr 1722291395], length 51056
> 
> IP dstip.1234 > srcip.50086: Flags [.], ack 593345, win 122,
>   options [nop,nop,TS val 1722291395 ecr 45022534], length 0
> 
> IP dstip.1234 > srcip.50086: Flags [.], ack 602289, win 105,
>   options [nop,nop,TS val 1722291395 ecr 45022534], length 0
> 
> IP dstip.1234 > srcip.50086: Flags [.], ack 620177, win 71,
>   options [nop,nop,TS val 1722291395 ecr 45022534], length 0
> 
> MPLS (label 100, exp 0, [S], ttl 64) IP srcip.50086 > dstip.1234:
>   Flags [P.], seq 644401:655953, ack 0, win 420,
>   options [nop,nop,TS val 45022534 ecr 1722291395], length 11552
> 
> IP dstip.1234 > srcip.50086: Flags [.], ack 638065, win 37,
>   options [nop,nop,TS val 1722291395 ecr 45022534], length 0
> 
> IP dstip.1234 > srcip.50086: Flags [.], ack 644401, win 25,
>   options [nop,nop,TS val 1722291395 ecr 45022534], length 0
> 
> IP dstip.1234 > srcip.50086: Flags [.], ack 653345, win 8,
>   options [nop,nop,TS val 1722291395 ecr 45022534], length 0
> 
> IP dstip.1234 > srcip.50086: Flags [.], ack 655953, win 3,
>   options [nop,nop,TS val 1722291395 ecr 45022534], length 0
> 
> v1 -> v2:
> 	- Restore erroneously deleted code from i40e_tso.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> Co-developed-by: Mike Gallo <mgallo@fastly.com>
> Signed-off-by: Mike Gallo <mgallo@fastly.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 20 ++++++++++--
> drivers/net/ethernet/intel/i40e/i40e_txrx.c | 47 ++++++++++++++++++-----
> ------
>  2 files changed, 48 insertions(+), 19 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
