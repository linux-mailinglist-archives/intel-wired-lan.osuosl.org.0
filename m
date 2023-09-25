Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C41207AE0F2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Sep 2023 23:49:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BEA741C60;
	Mon, 25 Sep 2023 21:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BEA741C60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695678554;
	bh=151qtuoT2QlWwl1+pdUcy5QWrhaXCy+yAv1sNzlcAQo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2bLwM6ebrYze7vZX9DZVjISxC1leOhgyIA2CdGF5bI/CWwxJtoqH0tuOh0YocPQrl
	 nUxSa4kognbGFAcQkO7z208MfLe/u6waX1GzOWGPzV3sUcG6eXrudL7gTP7E1TKStS
	 1yCPDuhVOW4c9yQcQ+pAuf90dfzIQsRfo77aUcpZ+0UPnTwD/ihbOymt14cAeRERnm
	 L26i/aB8IPNmJDEpQJtWNHwwOX9CHirMDBw65khj4sdYIhmvqvmZDB616WYQi+QYyU
	 NBO3CnxtNrdu6bCG82u7JpbGXkwFq9BUo9reiM7+Qtc+nmKMEkLl5D/Uz188bScFXC
	 R/tGtbPxdIDzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zpJw1f7vA3XQ; Mon, 25 Sep 2023 21:49:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 858EE4086A;
	Mon, 25 Sep 2023 21:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 858EE4086A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E0481BF279
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 21:49:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2555F81E5B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 21:49:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2555F81E5B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VMprFU1oL2W0 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Sep 2023 21:49:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3586181DE1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Sep 2023 21:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3586181DE1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="360787868"
X-IronPort-AV: E=Sophos;i="6.03,176,1694761200"; d="scan'208";a="360787868"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 14:49:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="742084545"
X-IronPort-AV: E=Sophos;i="6.03,176,1694761200"; d="scan'208";a="742084545"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2023 14:49:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 14:49:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 25 Sep 2023 14:49:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 25 Sep 2023 14:49:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kGuG0Q+ajgg/2XTnou0rlUTIodl0HyY8puwV0FPFqITA1RC5i4KX84WFJCK9BWVJ2sGLEBOQlKy7Re4sfYylY3gxmm6xNBfukv6dvVajVsU0L+rzTpaPPsOm8uvrfLJrtJ06vtin25ccWPudDSCJhn1jMotUWyuk+M2sW8WGXs0dYG0edOQS4c69ruy0hRbCwxTMQvIC3Yz9EWZ2oGdcWV9xh/j9RalpoNK695SAH3xQW+EcY5skNNVy3fyifTBZhPdMwxZiAW4MPBcN3943Xgw66TZei0sU1YUT1pR5+4Ll3NsWaUmWtJE+qx4DaYjFBZyG5bmVCqPXPxLevli7oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FMECfvdTafSrM7ROs3D86SLTpB8TGxqmUam1e1elb6Q=;
 b=d5v3BshVJoH0Bf6ENfIuKPY+mC+8lIugMCn2VU4lRU10/t8oXKUCHwlSTVuY5Tgxkjm3KdbUIvnd8UEU5EA28LeuiJh9TP+KYnoxibnkC1rmkhfI1qUaZ74ChpQMrFQypnWjXU56xhxbmkKigBu/wZj2052i1fn29XPdKx5Plh1czEtvqFhfvEpjLyqxSKAz8ueHCopVmHOlAT5QZ+QN1u0p9JtaDlNjLCAKdRwnpF+FI8YYvcx05lVAXTAIyrZtqnvQOa/4+boWMBuVuICAzTzXQneyZt5oxM28XQHGebhbId8i3TePZQCb6+eNmw3KiIsTgv9LjLVx12hgDdLC5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH8PR11MB8063.namprd11.prod.outlook.com (2603:10b6:510:252::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Mon, 25 Sep
 2023 21:49:01 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%4]) with mapi id 15.20.6813.018; Mon, 25 Sep 2023
 21:49:01 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Arnd Bergmann <arnd@kernel.org>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH] ice: require PTP clock for building
Thread-Index: AQHZ78jGgTby0iFDvU+ADGoYgeC6t7AsFAmw
Date: Mon, 25 Sep 2023 21:49:01 +0000
Message-ID: <CO1PR11MB50895BBE115A20B1A1EEC603D6FCA@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20230925155538.526317-1-arnd@kernel.org>
In-Reply-To: <20230925155538.526317-1-arnd@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|PH8PR11MB8063:EE_
x-ms-office365-filtering-correlation-id: 98cafa83-5047-4006-e026-08dbbe113aa3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TyeK5/80UepCowzQBhNM7rjVkXWHJZONTeUqn14Jsc3EYU+hkwoHjP+ghqO5g951WV7Bq1WAN40SAg3XBWEXhq3no/kshAqx+j1jai/rgosETKflc9g1Rjspvb2oSS45aXgzoU0Q2ABRKqJxlj5r3ARpMZC/jvC2A3GIJfTGAVt9i5lqhMVbkE83EydA/GDTqI4DaMCz7j7L8lph/HYj2IL7SfNZ2EJZDHHLYkiPcW4vQczlyG+ODCq62LDdJ/Kp6ufGUaMVsQDR/odSE0Hfd3gJO77deGdcr7Z8WR7GSK4Fj2R73cD9FofRw/k/75RVByRP+havgjYCOy7APH4pPsuvTtpjpA8dvFOOomhRR/r/0EKw96k/ypRl1OON7RLEFnIj7WuxDUoxcBr/8cTIHP6a9imiJF1y/gQvNELjkuBs1Y/pXxgo7sajfF56pIuY4xzO84aaQMTcZgQG3Y5lrqvFbSMUPnSV6owIphqiJF3oX3XBNP/G7iNl7Po/MHlzHrGdTGW20jbzbtZ0LUWiPWapzBy6Bcv+l3n+R8fEPNyya2Cc7F5eIAxTXORQ07KnIMWX05Tb4GEx7ByYKDCzLxawqePHo5FBRA3ctDEiG4U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(39860400002)(136003)(396003)(346002)(230922051799003)(186009)(1800799009)(451199024)(71200400001)(478600001)(966005)(26005)(83380400001)(86362001)(82960400001)(38070700005)(38100700002)(33656002)(5660300002)(55016003)(53546011)(7696005)(6506007)(122000001)(9686003)(6636002)(110136005)(2906002)(54906003)(66556008)(66446008)(66476007)(76116006)(66946007)(64756008)(316002)(7416002)(52536014)(41300700001)(4326008)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MADUfIeB4V5T/ccJhNLMRTKuhSz8/6InGLZX/hvZaX1eEk9C5iTaAgp+B/Vw?=
 =?us-ascii?Q?T/F6od2XKVVbeNxLh2Sp2xXEGseokTAN08AEFEKut3Q7+x+Ywfu2ogzB2oVr?=
 =?us-ascii?Q?zD5bHw919yyT9iDEMIotu8UcPg6faMYgrTsyJsEtYPMf6ks2wy0QAKfkH3Mx?=
 =?us-ascii?Q?0IjQw9N8O4Ru+ghURZjXgfluetOvXOA62Ssqm6f15M9OqN6nuANkRMb6A+v6?=
 =?us-ascii?Q?LNNJV/4i8by8Yvk3B7DMMZXdlw+P1lWgFbNzGjXBc8sGHT2af1WWuP30Gm2l?=
 =?us-ascii?Q?m3nGQQNVrtU0BMcjXieuidUPTa+MTaN3qXVwXzcXF+w4/Tu6RWMDmEe+TrGb?=
 =?us-ascii?Q?/4Y3ithzmJhUOA0PQWyijBgj6pZAZDcuzkGyp5XR115sleHCrgdSYulFsumf?=
 =?us-ascii?Q?Gj4yH/zuJNNDy6DMBR1H+nNYgUNO8KOSM7ZZZWFEFnbV60ZuK5LhdvqTwg/B?=
 =?us-ascii?Q?aNhlVoQQ55i0KJtsd3zptF5jqhaGUBK8Vrv1cUB4CkohCKCvDnpaNZD7K7ZH?=
 =?us-ascii?Q?H6pWXlUT9/btgbM4k1dyIzb8UB+Z1CyN1ETu0CVAJ750pT3E7w9er9PIi6pq?=
 =?us-ascii?Q?bdk3PbdwRlGwX5dHt8VIm1ulzpO9L0e1xw9++TTo2dywUuPDaBoGV5bSfWtI?=
 =?us-ascii?Q?MDttVad1owdSlhL9L23ESLH/i426+NxNRlW02rwCT8b0A59UepNPX6nXpumy?=
 =?us-ascii?Q?eHc6ueMrjGZGG4NyqA/I09R6YiIFnitY3CSUoral/twn+9AXlHIlbPPa5jQe?=
 =?us-ascii?Q?RRGP17CfLa4xOCRtPTc0+hvWALepRM7i3/fWJfhIVfZI3M49F2E8Q9hBIRqK?=
 =?us-ascii?Q?ZImNCloQztG6l7jFImbxrCeZUDZ182lv9dds60CcHy0+0aF7Y5oM39oT05QX?=
 =?us-ascii?Q?9WzeAXVuQvgZmNlYeSDyBng04Ow0YWVWkpA0nvOE/VeY0sIpZZzvkajRBs7h?=
 =?us-ascii?Q?GAnpeadf//KrCBYpRKw9bTfyZf/6wX8OQZyo22cT9yminrFoHPBY4J+zgSb5?=
 =?us-ascii?Q?IM/noDaI4nwWiqLLYYOxxZa2SPG3Wzq9wwrhQD4q6xivygq9xtI/CfAYSSJg?=
 =?us-ascii?Q?kvtPA+4HKe6w/QQMwxETMT5yuenoVylF/wBMpWFF7O9qbu9zOKknqyofowWf?=
 =?us-ascii?Q?peB7jyNjtFUXVdcizBGRlw4il1b493ug0Gh5WC0/g/C8bqAs5wM6WSKnyFmB?=
 =?us-ascii?Q?IYo7sLNYI5LZ5oHPGriEjr2QU5oZuizixdvoWVF1o5r8S+vaOx21M7JQDmIl?=
 =?us-ascii?Q?rkwc8sKvBCRIC81LNHR2OhFduTukB4wHp/+eCjPpw6mb7GTEP8aEV4WF1E2/?=
 =?us-ascii?Q?PRqc4Qi4XEzGnS6eD+rXx/8vnaBNa/ARWRpn2JtJq04hjErnKnQm6l68sSsy?=
 =?us-ascii?Q?qT3pVqLXB13wY5qBt26GroGoSRO39knhtjF+YJK6pmECGLrEh2sqKgLYlfrB?=
 =?us-ascii?Q?MaMuFETHkcqjNopgI9MoHy6XQrz1qAOOASrR597D6VV9RuWOgyrLY2SK8I50?=
 =?us-ascii?Q?RclTxhqh2uKfCbztHcaiR0E3n1gMw25XznXs2opWJcge8IZCkki//GdnExs9?=
 =?us-ascii?Q?2oHO3weR9wGPLd1vaoDgEYSKgOKDx0EcWyw//bGp?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98cafa83-5047-4006-e026-08dbbe113aa3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2023 21:49:01.0394 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9frKj0mLNq29OUU/0Ay0nrh3YAJIT8kH9BJ3XhbWUWp8rjAojmgH+CJJiQK/oRHrA7nICTq7+A+TLS5Hq6iFSvxAeMa1Bk5bl9gW0Mdsarg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8063
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695678546; x=1727214546;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V2VY60xiM6Moj9wKTSvhFEWIstdZh5Y1B/XqcNAEea8=;
 b=hAR0rH5cAAcPP0+HMGWqd4EW4wsbRM2Xli7CJezeEgLCgE3a2quir0Df
 xXXHslgmWdr9RvoucsPJFdG4o9V5JkCYIssI80Rogl0UJ4KStOneG8fyO
 KZtrOsoRyFIaDBQRoexZKPLCg/as/5V9pEPl7dnZf5FSLQdWBX1Uc5KDM
 O/f1x6fIB+aKbUnYbdIW8/UqinhVILgAZWfGFlp3LNSOOKRF31eTEKD6i
 MKhnVhHCpaeH51pNMjlI+COegRZjF7LA22Aykvu4mMzQOvzbjJqvqpTWw
 XlEQhSPN5qJOGURLWVl/c8caOKhca/c5pvIkkkx4I7HtVs8FMrTRTXXvw
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hAR0rH5c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: require PTP clock for building
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>, Jiri Pirko <jiri@resnulli.us>,
 "Michalik, Michal" <michal.michalik@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Arnd Bergmann <arnd@kernel.org>
> Sent: Monday, September 25, 2023 8:55 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Arnd Bergmann <arnd@arndb.de>; David S. Miller <davem@davemloft.net>;
> Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com>; Michalik, Michal
> <michal.michalik@intel.com>; Jiri Pirko <jiri@resnulli.us>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Hay, Joshua A <joshua.a.hay@intel.com>; Vadim
> Fedorenko <vadim.fedorenko@linux.dev>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [PATCH] ice: require PTP clock for building
> 
> From: Arnd Bergmann <arnd@arndb.de>
> 
> A previous fix added PTP as an optional dependency, which was correct as
> of commit 87758511075ec ("igc: fix build errors for PTP"), but this
> has recently changed with the PTP code getting more deeply integrated
> into the ICE driver.
> 
> Trying to build ICE when PTP is disabled results in this internal link failure
> as the local functions are left out of the driver:
> 
> ERROR: modpost: "ice_is_clock_mux_present_e810t"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_is_phy_rclk_present"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_cgu_get_pin_name" [drivers/net/ethernet/intel/ice/ice.ko]
> undefined!
> ERROR: modpost: "ice_get_cgu_state" [drivers/net/ethernet/intel/ice/ice.ko]
> undefined!
> ERROR: modpost: "ice_is_cgu_present" [drivers/net/ethernet/intel/ice/ice.ko]
> undefined!
> ERROR: modpost: "ice_get_cgu_rclk_pin_info"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> ERROR: modpost: "ice_cgu_get_pin_type" [drivers/net/ethernet/intel/ice/ice.ko]
> undefined!
> ERROR: modpost: "ice_cgu_get_pin_freq_supp"
> [drivers/net/ethernet/intel/ice/ice.ko] undefined!
> 
> I tried rearranging the code to allow building it again, but this was getting
> too complicated for an outsider, so just enforce the dependency to fix randconfig
> builds again, until someone wants to clean this up again.
> 
> In practice, any configuration that includes this driver is also going to
> want PTP clocks anyway.
> 
> Fixes: 8a3a565ff210a ("ice: add admin commands to access cgu configuration")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>


There are a couple of other fixes already posted including the one I posted last week:

https://lore.kernel.org/netdev/20230921000633.1238097-1-jacob.e.keller@intel.com/

My method keeps the PTP dependency optional and instead disables the features that required PTP.

Thanks,
Jake

> ---
>  drivers/net/ethernet/intel/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
> index e6684f3cc0ce0..c452ecf89b984 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -278,7 +278,7 @@ config ICE
>  	tristate "Intel(R) Ethernet Connection E800 Series Support"
>  	default n
>  	depends on PCI_MSI
> -	depends on PTP_1588_CLOCK_OPTIONAL
> +	depends on PTP_1588_CLOCK
>  	depends on GNSS || GNSS = n
>  	select AUXILIARY_BUS
>  	select DIMLIB
> --
> 2.39.2
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
