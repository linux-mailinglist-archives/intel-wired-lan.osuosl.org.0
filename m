Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E75D772540F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Jun 2023 08:26:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 442BD40925;
	Wed,  7 Jun 2023 06:26:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 442BD40925
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686119173;
	bh=DfTY6cFGvvVxb/qz/eTjv307Fu61RCDZR8M2ROCzEqM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kE3G/FxBzMMvfDifd+zI07ppNCsD4/T9+jjylwOo3qMtNCa3F4hWpOe1HNsJK7u84
	 3SsMsMqJD/ibRv7sGk/DFi3Q6VRU/uyU2rRa6nVHbAmsJ6M+bsYcPsff/A0DVUmZ5c
	 il1ik6fH0C13dHkG1nmqhKio5BSZavSPfhVEWO4qpGuj7ph61xeVp+nI2MHMJChnYX
	 I1jaH1kh83OYjIyiXFLN4AnqRBZ5xQ11liDM8Ln6SDw5awbj/EBAU+xFl/IQ+gbmwg
	 JFWOb1/iFlKB5uz1yZatYOfwLDbVgzN+0fQh2wfbCXG/pLaaoYWVq3dw+nUgIrO3zz
	 j+l3OfyTOHtzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pzJashjbD3E9; Wed,  7 Jun 2023 06:26:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A65D840924;
	Wed,  7 Jun 2023 06:26:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A65D840924
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9EBD1BF3E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:26:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B167D81E2C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:26:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B167D81E2C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hdqCI4sxnBGE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jun 2023 06:26:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86F2C81C81
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86F2C81C81
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jun 2023 06:26:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="359367909"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="359367909"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 23:26:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="1039471768"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="1039471768"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 06 Jun 2023 23:26:02 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 23:26:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 23:26:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 23:26:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 23:26:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q5lph7kmQ1W7TyYfcjawtmRf4hlSXMFCipD/uWIWa9IbMmV9k/vgw7TPm2wCqYrRVWlPdc3ax1Gxh6ktQRQpA9/IklEL+6o6cNr2FbEomW/Ts4BbolDPfuFZZGVYIJEqQ9329Qcb/wUUYGhhdERHb2C6gNu0mTeOexb0w3KFx1u5LN+XqQauf6kIZm+RlRO6G6Q6dhrniCTZvW458gOFF1E+SG48n2Ax6ykqGfynoH34qy3tL3n+1oluW7TGIZcI+sv5JyyqWGi98DuQrIT5Sy8vcPuglClU+xTb2nhug46fzTTu+BnBqoe8nb+VXNNraWk7AEgX5N8ToI89m9vfQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5vMdW8DmKSV2uVCbfnp+0/hx9XDu5XapiR/gvMROReg=;
 b=fZ+MZo4v/9bCMeRc7Y+DE7eWoNp0YDFOZy3M1+my6j6jCorURoK2I6Debm6HNA2jOpxDNfQskSBT41G/fgqVgk8OFyGKKb/W9OERqyXPHnVw4gejkx8wC7Y97G8ccoOzN7s1u69BpdhoV8pF59yze4JQDYVyMOpJ+HJbMjq2VrmevUQKBh1Du1aJCAAIJsaBZH97b6XNOx2VR0XnDB3dDjWgl09YGblb3G3VuunIdpYaBE3a7zA/u4kBRpQyUlb9BVj5XCW8ml5F6nz7KFLUCM5kyW7ODamEyqU0EOcg43H+mu0hmGF22GVsrmx6siE2uYmrFCmYJtyf/CuNhWagog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB6452.namprd11.prod.outlook.com (2603:10b6:510:1f3::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Wed, 7 Jun
 2023 06:25:59 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 06:25:59 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 10/13] ice: Add VLAN FDB
 support in switchdev mode
Thread-Index: AQHZjjq3E06uBu+EJES2T1sOYpocfa9+9UFA
Date: Wed, 7 Jun 2023 06:25:59 +0000
Message-ID: <PH0PR11MB5013A62544E9F0C6F8D345ED9653A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-11-wojciech.drewek@intel.com>
In-Reply-To: <20230524122121.15012-11-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB6452:EE_
x-ms-office365-filtering-correlation-id: 2faa3fd7-99c7-4237-dc6c-08db67200f2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0rDInFHz3dmiOCK+CEOQnif67bIh89j6YniMS6Eh8CtmQDIxpLxrsJXHe/3onRmsJk7I8wjgD+2vHY2AOu3csMsvLZXqts8bDazQJOfxipbhDHbXsSBgdG4W5D3oonOWMGXgspVxRtNSZdvz7ujdijNrvWi4L1hNwoJJmCU4LwYQFHmpVP98Vike6XicIDeWAWYcROyy7f5Of6x38QJs3I1GaBMuR6qbEHEdTXf4B/ViZ02/jra47X2CL07HyZkHZdKFR4kM0PZsU6DV4vp26F9JzSW7q7mE8hkToE4B0UYPsnxBp2rDP8swaJTC9iWi1E65chJ2+1ljrlwJntgBtxQF4CprpgeZUj2vlDJgxWQ7tF2vngbYoXmjbjzTdkUCl15WPgf/SeJqR+QOFAdZYcuyrBYVXTbe5xXR9s9If/t6A1kgxaGRwJPjpTwG7AfUyqBJtnLOLy4gtP5JEjYa/P/+G6CFADvZd4hR95XnUgWV6agToQmDeCcrQ/xiMBtj719uAWdJh7eb4WyWJvB4Z83YdFg+ttY3Uo2GmM5pjfosEvqaJGFQqw5Zkq4kWElrA8qpYyR+0sCRPJropMTG/gqnL0moMlJFZuRT9TNLxTGgXvw7FLpYhVdL4ZXwlGrI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(366004)(346002)(376002)(39860400002)(451199021)(478600001)(2906002)(82960400001)(7696005)(33656002)(71200400001)(83380400001)(38070700005)(9686003)(86362001)(53546011)(122000001)(6506007)(38100700002)(26005)(186003)(5660300002)(316002)(110136005)(55016003)(8676002)(76116006)(66946007)(8936002)(66556008)(66446008)(4326008)(66476007)(64756008)(52536014)(54906003)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EYVWFRgdsHVpW6UMb1FWCx/qLLSrE7R/Xg9kVAEW29eYkEwEd8EYz/fD550x?=
 =?us-ascii?Q?0ZGhuZ4r1zZlVPW3Z2uxI+e3328qct5Dahb+rZjq4ZScXCkV8b54W+iuaqgI?=
 =?us-ascii?Q?TiUZExTgeP3pUqW4J5IlRWOI7Gq1usmen2EH99vojD61N2Gu9EZntwDNKuFk?=
 =?us-ascii?Q?GFSPlIJdRQBlIUGg/l9vae9xGqH+NL/cRLawtZ5gkeeMn7eBuL2te6lHyYBH?=
 =?us-ascii?Q?JLy4/xxi7BjHAKsIfRRpVMYBM1St8EZqhvW5x4hdTgeA5u/QFkck8YHHALiW?=
 =?us-ascii?Q?cvGlKLQP2Kxymkfe1SXOyl9hisIeGu81BkhtCYOg+fcRq8JSEPmxG2bPPBrb?=
 =?us-ascii?Q?VtbNJFsaOv1NUBtAZiqNjVzf4bsJnayrowYTt0+Qxh1U821qoHRIeuVu40XD?=
 =?us-ascii?Q?1FjCGxpEFaQ5CI/tgFIRtiM6ojGcA9KqBzD2uEOMSoVH/01+sGCoc9N5tWVH?=
 =?us-ascii?Q?J7L+pHw7iP/6KpCNoHl7EdEplzekuZcAutR3ED4PDp3GcoQFbRNEieL+xusc?=
 =?us-ascii?Q?J0pECPhb3zjDPe0fZ7qFszBSXT3zrgn716jxejsH6i+iTAPP1NYdL93zxQ99?=
 =?us-ascii?Q?4/1KfoaZHnUYvDD4D3b8iEpJMjJvjcmJvu1rQyqtzvN3ewmzo2npNqUz+MOp?=
 =?us-ascii?Q?J8eTd+YhLojZEKnMZR/f2n88JbK2LU8E729V8bV46J6r2y6vFSQKk2FI8urH?=
 =?us-ascii?Q?LGUXeN7oQYvpg5TC59uSdwP9S/mZMcDrPqkL65oIljJTRBWyP9yjGbxgH1qx?=
 =?us-ascii?Q?zcQru8viUUozlYc8q/CnbkZ2MEAKPqeCgvbEHgfzU9NjsDKYOZHoQo74fl82?=
 =?us-ascii?Q?RViEc3wbLFroJ2u5F/pLDN+FMxmi4ToOQRU3udH3ixiB+VGRAP+D70xlaXVh?=
 =?us-ascii?Q?ra0l1BeBqE4gBkUEeU1jNHR4wXk89Fq4GH5mIOjufvjJp8G5HRsSHw6SU1Po?=
 =?us-ascii?Q?WuQMRoMVCTMCU7b0yOgy8WNuOlecr9XB9oBjAOv+AZXZCP9xXl6GdVd9x37U?=
 =?us-ascii?Q?CmQ+Z5Zld7RQJMjJ0gvB8KQgdr9PULKCcrp0Whm+MeyNRQM+g0PO8pG8AhV7?=
 =?us-ascii?Q?ARMjlvSQ9u8MX8etPo6UUbeOEKj8gyLQlsda33PpLnN9+aoYlLaKmXH+VNFt?=
 =?us-ascii?Q?3AJ5L/S/fU6iisQRDa9rOiwABFUqJkKOrAKd6AaLSl0hBBmRSu7QQtLm0ulB?=
 =?us-ascii?Q?LklqeHRGQMsHJEZ+/O0ZgihSKyEkwj6avc5M5TJ8yiJFdZI069uChdyHwSGx?=
 =?us-ascii?Q?A3ajg6sFtVN/H1DShDdlokGXxtQRbGwDwxpGx06kaDzXg5/SFYWE7s4bAsA2?=
 =?us-ascii?Q?ynXb4dFzW2i0F538ErLVZcpAb5gAmNkFD4IuS0eWXq1/wK6g8VuQDRsvTUzo?=
 =?us-ascii?Q?5tY3ko+gPYWju1siN/wbmnZcEXaMDZmEjunPK5tfUMek3fXVvqokHxPbu+Tg?=
 =?us-ascii?Q?w+x5xDkYcFTvuLluZZHuplWZloru80y+PyMydtehbZkN+BgWYsnkde9HnyNX?=
 =?us-ascii?Q?YQMBsmX2oqRX3+XIMrNrpE4DUUWYycAyaVWVm+lH+yADAB3e5ikWbkbzdyhk?=
 =?us-ascii?Q?popZPYNZ1Y6NtnuPcm2pCeeXgNFAPbaMFiWkRIn1YzVzq59cGWv4WWUZ0JnC?=
 =?us-ascii?Q?0A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2faa3fd7-99c7-4237-dc6c-08db67200f2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 06:25:59.3787 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cE/JRPc18PxHeDBqsfHnXHNX10MgX7aLx54DpfuVhaU+jkBQsmqxvJ6uw4u6+dtL6fVd6toSDbVshQLaSZAF9styZ1uGbkHP9n8zMdi1XLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6452
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686119163; x=1717655163;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CAt3RVq3CJaLUWScRMdVIvR9qh4cej2cjRIOkF452GY=;
 b=byEUC7fI5fRa2MdcT7aExI48mEElerlo6tV4Ow+4erx2ECbZQ8qL0iqi
 Ajh+DinuP/q940Y89b+k5SPXqkHhgMNFmgULbgMKSspFRCwagFlCZ7qpQ
 DT23zHHS3ICtrWqbjF88ZPHMgca6BHaPPKQWPWYlrUg5IXIF+KuBs2QWv
 GEueOt0wviXKAGwRVF3z235s/A6xW71i3mDO4b2qG1VVXrLa9oB6coPq5
 Ua6jHifUXcFDIUjsfQXcpXy3D12gzK79/l7O1PhTM0D7RV/w4VKkcW48G
 a+zxXMiyvXc84FQzIyMZ8hS5lrtTIvL2sQvHWdYBMu3EhND8Nr/iDvClY
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=byEUC7fI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 10/13] ice: Add VLAN FDB
 support in switchdev mode
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Wednesday, May 24, 2023 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org;
> simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 10/13] ice: Add VLAN FDB
> support in switchdev mode
> 
> From: Marcin Szycik <marcin.szycik@intel.com>
> 
> Add support for matching on VLAN tag in bridge offloads.
> Currently only trunk mode is supported.
> 
> To enable VLAN filtering (existing FDB entries will be deleted):
> ip link set $BR type bridge vlan_filtering 1
> 
> To add VLANs to bridge in trunk mode:
> bridge vlan add dev $PF1 vid 110-111
> bridge vlan add dev $VF1_PR vid 110-111
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: introduce ice_eswitch_is_vid_valid, remove vlan bool arg,
>     introduce better log msg
> v3: move inline function (ice_eswitch_is_vid_valid) to
>     ice_eswitch_br.h
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   | 308 +++++++++++++++++-
>  .../net/ethernet/intel/ice/ice_eswitch_br.h   |  21 ++
>  2 files changed, 317 insertions(+), 12 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
