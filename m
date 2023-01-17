Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3DE66E589
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 19:01:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 712DE416C6;
	Tue, 17 Jan 2023 18:01:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 712DE416C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673978483;
	bh=GOQ8EaAEubVWgeMsm0VrEnE7OsGX2nYOWSe+TGAdkZA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aXwvkg9A3WycRLl2J9Ez14E98omkFshz+YWrlgSx7BgylMvAI5HmQmxnS2IjKwBQ7
	 xq9Ne1rJZ9K+gWo0saZTvkolz6pJd7HpbplPrP8PCrWPUnz1njWayZ99a+IpJ9WLk3
	 UMaK3mjGF2IECqTjgD9U+WSv6NFxnFc8gblRL0ZQRycoBM2Cdg3M0weRs+GOfaXvq8
	 qvDQlaPB5pTYQ55msZEwj3ZAPofTJGOYN0/ggDOyQt0C08RgXajjPzDv/uQll5XmUc
	 qHOPPBjxj6ddH9CSBP2cZxprxstthix5hChBt5RsG/Ko+0rUDy+IH3sf/zQBWx2OV2
	 /rJv/uZHL5y0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yAPTajhHFYuQ; Tue, 17 Jan 2023 18:01:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 15BE841626;
	Tue, 17 Jan 2023 18:01:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15BE841626
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 21F191BF35E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 18:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF25E60C0C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 18:01:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF25E60C0C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QfCFc6_VZW7f for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 18:01:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9306960B95
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9306960B95
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 18:01:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="324822386"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="324822386"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 10:01:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="988223247"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="988223247"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 17 Jan 2023 10:01:06 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 10:01:05 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 10:01:05 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 17 Jan 2023 10:01:05 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 17 Jan 2023 10:01:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lp6VUkB9azkZKJEeGHMUODMRrJWNZmwwbkfYpNeBV7NfqK8PACNyZPRjJV8pYbYpkQvc1iTGvtck9IOzD5FbBqAdtPBJPxJLxBfE8C6wbmtL/vdUvj2RCXNbPpJUKVer4AFu527u3gB5mchKYeWp0SyniV3iLAVy7NpcY67PtKiT8mm6MpOT9RIkLqytWpgCSUxhuHhB0LXUVNNORhmMnpoNTRW14OFxcjz3Ne4SE4Vq8q2UCpSs7rfw2gj5dkrQOUiR2cMZ1yHOJVgJfRx0F4JFKx2pcEdc5KPIJgXCmnniFqvK+q4PeHBz6iZZIgI05zH4HKV3B67S7SW7Y7J1NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SKexHgpeUeTwCFolrTGpiVUzAUhofXMes+bLT9F8zAA=;
 b=OYKUWAXDnxz1+zqBJMm1PT1SCaGH8r8paQSWWacGKuczsvdX2OF7PQei5h69zuMAnJHgikpmZDxffK5Z/2eAc7Lg5lo+/mjasgruiFjJmIrq1BdXvp3r7tt3MtTc41YIz8GbDFeNsytyisSVS7B7bBNsl0FFceACe2RZa7EGyVw6m6NGtTveVCQLN2Nbciye+4iqttU6mUxLw83BHZQrret+YbwPK0FUYkO8Yp5ZZrmZU3d9NoyMoiDX08sXQf2MTfPO4smmlN+bXkp+e5oOkZYj5MGQgKAhCZDyZv0FaVGA/9gz5hYWaHezof/DGbY02E4gL6MIdbflmYxtjs+oiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 by IA1PR11MB7197.namprd11.prod.outlook.com (2603:10b6:208:41a::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 17 Jan
 2023 18:01:03 +0000
Received: from MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5d3d:f1f7:d54c:f117]) by MW5PR11MB5811.namprd11.prod.outlook.com
 ([fe80::5d3d:f1f7:d54c:f117%6]) with mapi id 15.20.5986.022; Tue, 17 Jan 2023
 18:01:03 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: Jay Vosburgh <jay.vosburgh@canonical.com>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
Thread-Index: AQHZJer0nN3NzXX+LU2rFS1kMYq9na6ctKQAgAY6YdA=
Date: Tue, 17 Jan 2023 18:01:03 +0000
Message-ID: <MW5PR11MB5811C6B950B041963ACFFD98DDC69@MW5PR11MB5811.namprd11.prod.outlook.com>
References: <20230111183145.1497367-1-david.m.ertman@intel.com>
 <30465.1673635972@famine>
In-Reply-To: <30465.1673635972@famine>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW5PR11MB5811:EE_|IA1PR11MB7197:EE_
x-ms-office365-filtering-correlation-id: d00de543-5392-4867-aa9a-08daf8b4cc4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JMBANJSyqsKEEU/zezg12+hMgi8f5bu7KuRfwNkKj49sS41fXmhInVhBwmOdUAZDuFxhgXFWidYNz/m3BA+Sc99PIbss+o7Ttj49TvVGTlBiyqmg+Mf/Mhu0E8jc2mNxfckUh9SafnZPfwVfEg8XZ3IuGZb7KHkM8X6IlDcdGDzwHd30+wq3Fz3B3w0jjySoJPqOPsxtkMGAs7UbYw3jngcQRFQqjjitABU85/YhFVfKjNpjyDcAAGM/QQeog/OK1jBnu7qbpzHcrnjkSkweVayEWewm6u5CaxmNGrerivin6rxQPZCWiGyVJrXLtDtq/aGgOQWR5ejWHnKAKg3itZDW6rSMK3DEXJ5cZn3xW8QREHgNi4Mr3GZ5KIT5lCTCJ4mzAn6rCsn041xZsVpSQB6VVwOBNq0nbwMPCWZcl4vYbv3PAQ9CZIhV9DWvZILv+zUfxcL7BIN+rQom5qykioJhx8BkIwnxCo2M3Sg5DDYG5M/uc9aNIIV6m5LgkjZXBURHAT3TThOa9Vz+aaxydPHlLoSGJ3016aAliqsnMQm3F4aMmMWHViQqx2IgsSviq7VrSFu7rPm23Yq4VEgMzBYs6qoNt2s3ImiJIy1HsIS5mfOe5RMSHG3qiOHRF8Sn1b9siqolBAJjggil31mTCsVjUvNSoYsPWOm7BMu7mUTM1FFFJ5qoRIa7Y5PwUndaSuyML5WMwMk0qIWG8/czBA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5811.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(39860400002)(136003)(396003)(376002)(451199015)(9686003)(54906003)(6506007)(186003)(55016003)(4326008)(66446008)(66946007)(86362001)(76116006)(64756008)(4744005)(66556008)(66476007)(122000001)(38070700005)(478600001)(5660300002)(8676002)(2906002)(38100700002)(82960400001)(6916009)(71200400001)(33656002)(26005)(7696005)(316002)(41300700001)(8936002)(52536014)(83380400001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/j27xXMkRF61wvstoquo5LIsK8lW1bvWuvXnOFAgSzqmzpF8qUTTJjuXExly?=
 =?us-ascii?Q?KPR9ejWvf4RX4an8416SPmzaxpvziswUVMxFkXRPXS6qQDKEyEAy8pCXwOLz?=
 =?us-ascii?Q?gpCZMhzAMbxkbswW8lotBCp3MaiZ7CnTwo0PUkVwfaj30jGXb5S9c8juleyu?=
 =?us-ascii?Q?JTVUsR5FSFmKsi5anTq3J6Q/8bxg0h02pJp1QbeYRIej+0a+bSS8pv6N5DGH?=
 =?us-ascii?Q?SVspRq4LWSTVh32g59rrA3VH0Te1cPcaSqS4jriS97RTzUFiD4Sof+GrTfoA?=
 =?us-ascii?Q?eVpi8yss4V09VWYAlhN/bee/Oybiqz/94nEDRo5gjJA2KPjjEilbN88UudWG?=
 =?us-ascii?Q?JGNr3vstvdLt/VjzSe8BKfFdsiA+Ck8RfJKi5vtQNMmig23KPP1eiogpiwkn?=
 =?us-ascii?Q?eJl429GiZwsMfJTuv5wmmt3IYL8jRCKbCN4mel5NJqQpKzmPZgysMKPoIMvG?=
 =?us-ascii?Q?f8JXN6iY8tVzShPAlOoQu718HbTOGTljarD6Pv7Q/mbbB4SOVY1FHmdJ6DXa?=
 =?us-ascii?Q?3MSGVfMkyLiIAniRbg+2nvLEhX1LdXfrb0y5ziAzdXl96mjgJHcyfh2H3SoU?=
 =?us-ascii?Q?cFj1+YJuu1a46KyuIw2tJGiITUe8SEAUcImbMSxbRQk3BPOJw1E6/71UuL8d?=
 =?us-ascii?Q?8au6LeMO4TkVvDbrMpDqwyqcUECy7hFWCaCgEmTSgUD7vuaaK3lwwmmxqikh?=
 =?us-ascii?Q?fBzneZW8miBNhAxV8FbiMZRIN4f+7wmhBsqTelKIcVP3uipC9IeURKZYyRAj?=
 =?us-ascii?Q?8W0XG/dUXj6Ur3rEe/IYTqIH0SbBguLeAwi6os8X7vJWM66865KgOjYNLw0v?=
 =?us-ascii?Q?/rx2jTnLxVia5zunPMnbTm82eU+IwoLP5HF/n0UidPPP0leHA0MtIeYwGqQI?=
 =?us-ascii?Q?sCHsZTj6scHP0+cfoWBy0TzbFj7IxHIF7YZ9qddMPuheCA1zIQ85hwMSromt?=
 =?us-ascii?Q?s76xqXSRUQ6PDNfMr6PESm7asAycBcQdj998vSEqh/Qi3LBpxojxrCXpeFD8?=
 =?us-ascii?Q?/2JLXTdUp2VynGdSwZI5MhP0mCVj4Zqbijh2MbxKNnaeTqB31bj9ghXZcOn+?=
 =?us-ascii?Q?2u4+p126kLXwARElK78ggQSqmv/J/BBMJlqQbcz3dR7lUY5RClxCuvfhjpaU?=
 =?us-ascii?Q?cSElQzR8xkUVxT8lbMzgpnregesveZK8RgfgZZ76WsDtZmHtfmUttOe0ru0q?=
 =?us-ascii?Q?e+p43R7k+bHTSXSwY5zqFsbu0b1qNRK7kLTBxEZPTR8uUJO4sxNwtP1pNLrd?=
 =?us-ascii?Q?bzCwfgtHvjSExWjMcqfOfCkYcP2gDB4YCxA/UdDQah8z0rtNwH2QD+NtKVG8?=
 =?us-ascii?Q?xsWYrGRMBP+OPKqYcj7uOQhpOmyk52udsAU2wEzyHeuVMFs/AXX37H1gZWMW?=
 =?us-ascii?Q?YX7kDeWIyEEhk3jYE954U5cOiA45yYdLn550Z2I243mcFHlrNX/+tiS7H4Yc?=
 =?us-ascii?Q?M5T5XnpzWcwpKAU//JTimglk1wnoebuoIsqM7QhbnXgRxgpSlf6H7SGKa0Vq?=
 =?us-ascii?Q?dUpx0NltkINsQ29XLDmMAhh6Kzj6Qw5YCZTdksyCpzKeCIFtpJVtkqQv1cm0?=
 =?us-ascii?Q?07TvFWp9JjTkTf47bAnkPkgPIMsbK0JEzGWw2mKLPBPknc9D3WA0sn2YEdSU?=
 =?us-ascii?Q?gA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5811.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d00de543-5392-4867-aa9a-08daf8b4cc4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2023 18:01:03.1281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DwNP+q68/vC0P+xQpyYzuonI4dbOwmd2RKhRtMGnoERPMU47RoOe77CfXhV7d2Cwv1X5lB38YpbHLUtmwdZv5EFQlx0oYLfd1kiTKcqDqJk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7197
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673978474; x=1705514474;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gWpw98GIkalru1F6s/gsxsRR4pQ8Qhdknn83Og7RDFQ=;
 b=iOuFwJQgbYMNGW17oD0O/jxo+c1LUYrEV272SO1xCS3ZDF1WqGyu/LmA
 EjfszFG8qS980onLJBUQSbeD2zmOsE8GSv8HQ/26XBlPp9b2aA7mn6gjc
 UdD+KNNs/66oYSdZPka+iDKQ82pjPXmP0GcVuztQVbskKg3gQgKESq1EM
 chAuaG3hAsFcsoAttB6d79bFPRMDsPMfHm4KkylL07Zk1QLqIR8DWNi6M
 GyxOWXayHeqOlBysOQb9qMpjGhvl5uiuNJwuVghqm3RyTqa485Jw+anfI
 vn4/itqM4GgIjb8J/nnMeX8RpnDpXFHAMSTS9tHXkhfqqLo3K2MEqgazy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iOuFwJQg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: avoid bonding causing
 auxiliary plug/unplug under RTNL lock
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
Cc: Jaroslav Pulchart <jaroslav.pulchart@gooddata.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Jay Vosburgh <jay.vosburgh@canonical.com>
> Sent: Friday, January 13, 2023 10:53 AM
> To: Ertman, David M <david.m.ertman@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; Jaroslav Pulchart
> <jaroslav.pulchart@gooddata.com>
> Subject: Re: [Intel-wired-lan] [PATCH net] ice: avoid bonding causing auxiliary
> plug/unplug under RTNL lock
> 
> Dave Ertman <david.m.ertman@intel.com> wrote:
> 
> >RDMA is not supported in ice on a PF that has been added to a bonded
> >interface. To enforce this, when an interface enters a bond, we unplug
> >the auxiliary device that supports RDMA functionality.  This unplug
> >currently happens in the context of handling the netdev bonding event.
> >This event is sent to the ice driver under RTNL context.  This is causing
> >a deadlock where the RDMA driver is waiting for the RTNL lock to complete
> >the removal.
> 
> 	Why is RDMA disallowed on interfaces that are members of a bond?
> Is this something specific to ice, or a generic problem with RDMA in
> general?
> 
> 	-J

This is a current limitation of the ice driver.

DaveE
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
