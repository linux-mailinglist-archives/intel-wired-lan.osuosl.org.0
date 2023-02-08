Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E82DF68E764
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 06:13:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C26C680DB3;
	Wed,  8 Feb 2023 05:13:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C26C680DB3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675833219;
	bh=evsAopLiUfmTnCGwIHkAxJuEvuIIyXYrefBJ8IueR+w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QmM0nh0WGilp21V1lE48mK7ZagJXVIu3Kf5TCSRBmOO9RKdV+14WaxjeivOP7jvsw
	 07InHX2W8f8og6flMn4+DbrjBrxBQE+8wH3Ru8H0kucvYLJZo1iJc1fMNpXmyLkldg
	 jHiFxNre8naaCGSjG523oPVnAF0TvW4ngIDIllHVbt/c3N/i3B+QbZ8LASpQJ2NJYf
	 thYSsC5s5IDRjMhKjzu8XI/BRbG25h+k35SoRkwXWbiD+ikhb2LUhHlKmwuV4MlAlU
	 49r11M/uWm2mjrhbcUhw1/LqB9fd/I8i/H4rEmSWwsG/YhqMWrICvsGZNOTEg8Xv5J
	 +YwJd8AB9YBkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lOynYJ-7MJW8; Wed,  8 Feb 2023 05:13:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2932D80F2C;
	Wed,  8 Feb 2023 05:13:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2932D80F2C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7473B1BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 05:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4B83B4034D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 05:13:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B83B4034D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EXMD1vkKzGnD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Feb 2023 05:13:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B7C14031D
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B7C14031D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Feb 2023 05:13:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="331844152"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="331844152"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 21:13:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="730717601"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="730717601"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2023 21:13:20 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 21:13:20 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 21:13:20 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 21:13:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DlZPTN2mH82qtQu1zhG/7vEVS0H7qi+sCtfjJznX5G0JULXabTBqN+H1J75Pr5hLmk5BMsRTxO64SNupfoz2TT9lsHUmObgjmzcRZCK+g722HS22uhtU5CaFyGxKQ7ECTuv32GvLollc9fl/OVnQ4UnCRpw0sxMzZZPDglaBkuRzffg3R7MWGLOrBUAkt1g/RwsJESsUuI1lZ9nV9jYBFdo8hwvchl48WcrASFc2b9m6JTg+67YTrobJ4flbH4n977ppW7ypVUHU+YH62urvAXA93HYhdTl658hFE2NskXGNNf+nAymbta/OqFw7e0tORvgx2AoEQvM2fDgddLs7Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C+9qGqPyKDmVBnWOVYMVQ5LdN3r1NRHBqusv8yhbiJg=;
 b=DYq9HOpC918OiPFSPI/RiNenGEkWHuINQUFeytxioORzE2e5T86Ch2tTsOCilmbAFBDYIq3mEN+HLGs8ck/j/+YemCZkOAOAikHvR32FHqoaUaWHQ76DD5r8lJ21PUYtqk3hrlrBy6lIMHp8fEBptppt+N/bipW4nVQnLxc+fbVrKaf0FOlnfZFKeHtzTSVV74G0TEVjqXC0NHBY2tm4p1nVeTlXxFyoDTesmeK7KlsJ23zmlOjG/0fS1EIxAHsqpfis7A+/jnCyUhCbkFtjWv9/ZPOSgx8uECJwQXgvo51ATgCvyAQXzkvQY+OHWhASsOhRN3cT7QCh73jGGVo8+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6268.namprd11.prod.outlook.com (2603:10b6:208:3e4::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Wed, 8 Feb
 2023 05:13:18 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6086.017; Wed, 8 Feb 2023
 05:13:17 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Fix check for weight and
 priority of a scheduling node
Thread-Index: AQHZMLGKN0BhxWPvHka8qD0JIRIQSK7ElowQ
Date: Wed, 8 Feb 2023 05:13:17 +0000
Message-ID: <BYAPR11MB33676E749C52C1D0F1EA0C7BFCD89@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230125113740.1814392-1-michal.wilczynski@intel.com>
In-Reply-To: <20230125113740.1814392-1-michal.wilczynski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6268:EE_
x-ms-office365-filtering-correlation-id: 10de6b21-dcab-404e-6551-08db09933036
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hoo7FF9d0NmQd9+DHcXwlDbkTz/HYZnS7h1XkHJwc5WuM463XuY98Q2tzgmHRq3T+IFmOHDp/63EPyh7MNvhyOyqwvQqSZoYsUpntvjfhQVIVAzsOSnKL71rmfhC3LY9DXJqbn8LPGufbdxm1Zj/xxCudr74NwU/SOXSWw1nB5yQslS+Ac1wFvr1m+LZeVCp0iw8VOE+gvDijHIwO+cAt+5QOR4fEZpthkFqpr4Kd+ugaqc2MA8giVDYfdG64rIa8aNxCSJf1/SinnhPXPtzKDXgUeOSB3fE7pGkkRnDaxnBH/CNzwZvuPQcjKQjCBh1JlpLa2qZh8fS/3HXcdC9W+aaLS3ToU58SPoKF+6x6LpQh8aeIpBHyePsaoH2WY3TjrZMtJL/17UUJg0UZUmPLQvW/f7wtwU7XTdIXqLqZSQ6vZI258xGRyBo8KwK3McyNfJeZmpJFxAcrG50FA8j6+lDwjTg9U7BRxbU+0c61CakABHZXBqNZsGLB59yeVAsFKZI4hxjpeyWs34J4n0DAP8moqKwFDOage6ShmJOnh58G8O1oWXRF5sssw0pv16VxAlbCJqxzNFQzKXKwP1+Ts9FpGaYQNSWsQfQRowD/aW2ke7LI55TJU7C3Eqd2hgC28qIOkCZeHS3Soww8KAjeBQqs2fA5siz9YG9NxjSrN26nNBEte8ybEMPyAkxvMYxUdxR0A+O6iMsr+y1ruqfJe3IW1wUxbnn3wjXIdRjD4k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39850400004)(136003)(376002)(396003)(346002)(366004)(451199018)(2906002)(52536014)(5660300002)(41300700001)(8936002)(83380400001)(33656002)(76116006)(66946007)(66446008)(64756008)(66476007)(66556008)(4326008)(9686003)(316002)(186003)(86362001)(110136005)(55016003)(71200400001)(54906003)(53546011)(6506007)(8676002)(38070700005)(26005)(7696005)(478600001)(82960400001)(38100700002)(122000001)(107886003)(16393002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jlLH4QBhkvOBeANwnq9UC5hZ9gBGpnccmq/RrTtvOmCDWrA5hEd6eXqEE/+A?=
 =?us-ascii?Q?gAw7tqhI0Q4uHkOPlo3q93oeAmtYD2ywatcFLzedvrV1RugbUGFzaHgAn7pI?=
 =?us-ascii?Q?X5RhxvloRnoXLRYadYCA9R/ei/Wcd3SRoHh8i6H0NQl6rQtMy+RhFjSN5FNG?=
 =?us-ascii?Q?3iEtFnSeb3+KHGb/KeoKgfDSrIlCNBN1q68rOFVnkxeYSQ3ZrJecPbXcMcVt?=
 =?us-ascii?Q?DxBjbrNv1WBPILcJXp3ygNAjEclwlkXNsDZs3FPU7cSrj5FbhaAiameRZ0uA?=
 =?us-ascii?Q?aoCnDnjmRBmqBVUXeNrpfE+a6DJFE/dxJPh9FEX6t5ZOtekSzEoJiQ/NYSxs?=
 =?us-ascii?Q?SC99gLAJkvJXNpY5YJRtGycu2BTnSJHACh8BCempijiXMAtPVJFEVoKLWPR0?=
 =?us-ascii?Q?lIHdtzZSN36JKZc8+HKz16+i5Xg0qXHNDnYb9GD2Q26axhlHaiOZT6scLcsZ?=
 =?us-ascii?Q?iuuKuYVmXExidMrqmS/z3yXTkIoSsQ5QsJ45Krzz+5tTQulv+u6D49nOofu1?=
 =?us-ascii?Q?/2tzpEeGn7TvrRFK5ync7eGMa1ztL52pkM9tnh+bzz8g3ZIbYxUkX+XtrnIK?=
 =?us-ascii?Q?Vt3HUIyc1/frEH8gKSH7DqPxg9n4v5eptockg6EjYwHnUcJiW6w1zSqU86kf?=
 =?us-ascii?Q?hPEZGt/4F6jDAE5JzB7TZWckXRNVMdA7+puBT9PHQ6RJ5pP9RxiaJZ6TrKbU?=
 =?us-ascii?Q?45lM2kwPG62INT4vbcUhlPe8hi/9ekW4ILxJKiMjbDESL+xmc1so0jJiXbJD?=
 =?us-ascii?Q?VrO3eojDasY0XAAX2Kraoq1As9O0A0UaA3xE5GP6YIStm3UJkVAJBB6mSyxz?=
 =?us-ascii?Q?3wkNufLDEEI5PVAM7i8i//PSq2U3PJDb0Hz4A52fo1TXUSy1HuFU2/5CRJAl?=
 =?us-ascii?Q?72XdEgediItSvS4JYMtWwdvRwKLN0q3qiHrdKkWVXrabiU3i8wI+O4FOlKgb?=
 =?us-ascii?Q?az5fAobu5RU6xOQMmwqHb/WO+m7MakElaNrEPjEHz05NoaUECnpMlyTAk5tB?=
 =?us-ascii?Q?iLpn61rMkHwkGXMMuJ8IhOmfMVT/f87NKWeeBS+g8cewfCvTZu6oO7ZyOX/T?=
 =?us-ascii?Q?oMwKZACdOdAj0yMhVPEmt+4OeTD0B5LPfMRieaqr+R8JEXIOsyqLe7jhCgYD?=
 =?us-ascii?Q?CYqrGrj06ReTec85fvL8DZ3hvCOLZZcshYUOBgQQMbyf8pqv/CzY8JQfaV1S?=
 =?us-ascii?Q?LmZMG1cx7CmDuxruNIp7y5h7m25tU4XAKJ6ONiOTik0V/JMQ3nrm7tfmt/y2?=
 =?us-ascii?Q?lcnaW2qL/7yXybK98OcTxJFOGSkCZoU1hoqCatXNcR/MchmrUhm5YWvwjQmK?=
 =?us-ascii?Q?4imoIBnaKFDIaET6fqSGwUt9VnV3lbHwTwZHMAra5AJu9xz+igukfY6CU8hx?=
 =?us-ascii?Q?2PR2pO0AlXDGsDTDrH9Q1+AIaMgpZifD0WzGyj6a+i1e+hlFXXC+GMjpfRUY?=
 =?us-ascii?Q?6cNs8O+J9kzjsfI4FuAUV/YD80dqVDZkzsPsXWewLUYksbhVKL73zw1vNhLJ?=
 =?us-ascii?Q?kRm4oxmGC7Oyynsx3EetTuG9t972kVe6f6xtk8jTALbayLqhciBRjNSHxoUN?=
 =?us-ascii?Q?I1NEqsM/JknbovvADN3dHXHlTDx8dAXvi85iGLa9?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10de6b21-dcab-404e-6551-08db09933036
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2023 05:13:17.6458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eJGe2hXLfC77+sVqejKfub2hnsG5qhgUYEylB0ny+cvwbMP3oyZOXbrDws4hn0sjf8n/FEOXcjjCqd0MkpakjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6268
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675833212; x=1707369212;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ivj5ddCrM9+kxe/xfjwqUmWQUpNDdNGsGAzOQsTpDTw=;
 b=h/flvniNaWKqgsBUBPJV74c3RrXln4FUCtSShGa9cLDxG7qz+GK0rewA
 BVA5bMIz/lvU0kXuAsFEUWq22iVTJ254kZTWP9yhz+jD+/AwzmKgq8D3/
 jekphY0PoRcmejzWtk7GD9V/iXnJMzg64yJE5B9+5+JWxFahI18SPYtHG
 SPZLrFDdWAANZMDnPYyWfOOZMzVMEOdlMq/FoJ9SZOh9Ra2uCm3Fb6qfj
 8ep7Buy5APNd+otCxjD7yB0srTQRbd0/9lGCbTTr/310CBhElD+Z90P3J
 jxq6PpUt8nXSLbLTyQWDz5IsSlHI5hpqV3cM+9wnCNqL4q73WuazRLQhH
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h/flvniN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix check for weight and
 priority of a scheduling node
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Wilczynski
> Sent: Wednesday, January 25, 2023 5:08 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Paul Menzel <pmenzel@molgen.mpg.de>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix check for weight and priority
> of a scheduling node
> 
> Currently checks for weight and priority ranges don't check incoming value
> from the devlink. Instead it checks node current weight or priority. This
> makes those checks useless.
> 
> Change range checks in ice_set_object_tx_priority() and
> ice_set_object_tx_weight() to check against incoming priority an weight.
> 
> Fixes: 42c2eb6b1f43 ("ice: Implement devlink-rate API")
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Acked-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> ---
> v2: replace "doesn't" with "don't" in a commit message
> 
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
