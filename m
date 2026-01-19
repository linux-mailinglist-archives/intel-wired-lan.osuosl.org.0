Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56ACCD3A4FF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 11:27:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 079A981C26;
	Mon, 19 Jan 2026 10:27:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O62TJvdSnCv9; Mon, 19 Jan 2026 10:27:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7243C81CA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768818470;
	bh=bVOJzz3AJ84RjPf4/7ehRfCiWDy/9OW2KcTXFFwxw0E=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C46sOFhaW+LqF6E/Y/jNSKrOEHMHDBOogJTMot5Q2Vt7Wo7hGyDUioa4PpvI3Ne6k
	 RoN4EnQpnamhHDdC2CUhO9OVC/O4zmtAps6MP+vQXCn1DqUZErhS9HZlDmKINAyM73
	 Z1dsCFOUIWNlA2fKGRnRPnI3Qb1aabAyxYX7y1187Gw/cuBaA8noaitIkSFH3SIVsK
	 YruYfFAro21eTI+Fnlt0daoPQJ1DLsR76y1AOtiXhJeY+HLgDO11NZSemiA5nr5VK4
	 THnLS7r+I3zt+eiITj5tXPWBLozw1TV65Ez7vyUVL7h+mBbWVedvQH1ivd+dfiT76J
	 +bdEyTtQAgt+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7243C81CA3;
	Mon, 19 Jan 2026 10:27:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0FCCF2CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB15C60E0E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:27:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k6AaUNW41WYZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 10:27:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 34BC960E0D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 34BC960E0D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 34BC960E0D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:27:48 +0000 (UTC)
X-CSE-ConnectionGUID: Fez8rDU2SaWI0DbCJWUvEA==
X-CSE-MsgGUID: yiYdspiaQhOPaB1Kmq8qxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="69228564"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="69228564"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 02:27:48 -0800
X-CSE-ConnectionGUID: DIhhipBASWiNXqi4tZcpUA==
X-CSE-MsgGUID: XNTrVrliTNCpEN3vjVZxGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="205735921"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 02:27:47 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 02:27:46 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 19 Jan 2026 02:27:46 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.38) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 02:27:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZBfR2xgaeSamzINdg5bm4al8/qbYbUjQui11x673i9XTUSOqMikTodbJrrs2yf8P+7YJvKkm23JP2JcpqLf4+W7JhPG94mYWcdBHy1/6jMJPGktFOMX+Ans/rAIE7Fgk21v7oITkSiGa0WITgIMzu4StlnGzdMtakplhrAYBBf/kdLKU8FFB81z1oivVt0Iz1obC3eCJ4df2bBWqjX9qsHo1pMzGT82R4zEPZz28FUkB6197YFTw8R7+kh4+CUa516+wdpOnJ5kt3Pv9Y2l+Cgai4TsXX6et9PmakR5omjguYNM0Cuqc+U8HQpx3XeIknQ9ixw45KrcA6Gbqx/EV4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bVOJzz3AJ84RjPf4/7ehRfCiWDy/9OW2KcTXFFwxw0E=;
 b=nK59pRXx2PZsAmPylEpRvyUDzUMIVJ8uTKXqbRlAIiod+cCS5YXEVJXccXYagOCD7r10WBMK6z3QvOqRoYDdySPPyv6uVQnSR0rdcQceY8QzcyomVtbvqRCD7GA8A4wImnzRGTB26T3EBEEn/ZPGj1wzgOE219g6UIS3Vp/0FArFhDF4rta0vOoLzpT8HQY65rp1Mxvg2zjsb4LeNReCJoCyL8e97v5GeLAT0tDgc/jmsBy1poDuery1C/irI18LIsq79eNRQSOr3knkXfUv64RBZJDtm0GHKhm8i2UKRJaIOXGPtLjUo+R9DsgVFV140ncilD6yWdulbP1l5WQRJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9254.namprd11.prod.outlook.com (2603:10b6:208:573::10)
 by DM4PR11MB7278.namprd11.prod.outlook.com (2603:10b6:8:10a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Mon, 19 Jan
 2026 10:27:44 +0000
Received: from IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7]) by IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7%3]) with mapi id 15.20.9520.003; Mon, 19 Jan 2026
 10:27:44 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-net v10] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
Thread-Index: AQHch8Mkp9uQAJwamE6D68fshB3ztrVZJ4GAgAAd2ICAAAYvMA==
Date: Mon, 19 Jan 2026 10:27:44 +0000
Message-ID: <IA3PR11MB9254FBD0ED0D93BA69919BE3D888A@IA3PR11MB9254.namprd11.prod.outlook.com>
References: <20260117150753.2088857-1-vivek.behera@siemens.com>
 <IA3PR11MB92544299E333CAE48DCD3B42D888A@IA3PR11MB9254.namprd11.prod.outlook.com>
 <AS1PR10MB53920DC31FACC7D4F573EBB18F88A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AS1PR10MB53920DC31FACC7D4F573EBB18F88A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=94a0a0e9-4654-4782-8bdf-5eb0afa3de1a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-01-19T09:00:16Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9254:EE_|DM4PR11MB7278:EE_
x-ms-office365-filtering-correlation-id: bf1ccb9b-aba3-4674-bc01-08de57456259
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?oqTsbmBgcOTnUyLHQKVjtwGfvqS3p8U4C+LIvUslZyXOhPsVXjp/eQzX4POj?=
 =?us-ascii?Q?gT/3ZmyMuMrkRYE7TuKikiG3I3Zrl/EoHlvF5EEJHJEPqsl+DCPU3UyhFdLR?=
 =?us-ascii?Q?AONThAwXVg7VUwXZoKycxLhQsnnmBSZ4QlYbYFJOdvSD6ddm0Q5QX1FkqF/k?=
 =?us-ascii?Q?bfkH6EogchSYS94iLRxkQC1C6wBB6Hag7G0Lcw63p5YafBTkpgvMjwwTEjzW?=
 =?us-ascii?Q?GDJa2KsT3jnS/qWLXCLw4RNXNE0RawPklFuGM/Caht9INhOWLXgVevWvq2pP?=
 =?us-ascii?Q?gC1N9OZ0FNtdkspj1o/wdwncFHXpeCOmDOFZhLlQkPeUVwWvKtxbV30yGXOL?=
 =?us-ascii?Q?0EucPxd0vRd7EulWeG7+GxuZXzGWlSG2Kfd83JvoZ+5IIX++oWqJuQ3LhOfR?=
 =?us-ascii?Q?lSU1PHlb+rq1vEN3xiu/DxeTy7CfVVzuMz00iqffjsp8jwCx1o/VbwvjI7Xn?=
 =?us-ascii?Q?BGtnzH5cRwDmk2dDx1vMHkhyq8Gd4tuB5M5qwgaYU+BAFPfjjjyu+NCYXwcn?=
 =?us-ascii?Q?2emzuxxfRfBz2iygWnETIdOWl5t7JBAlfqAX+qPq4Yue6gN5G+AEB7rqMn8E?=
 =?us-ascii?Q?jNGeww7FAhMWJge9h+tJh7SGCDwj68XVd0dpCDLo9qpPV29nutt5Gj92Add/?=
 =?us-ascii?Q?+Oya72fvRHeS5rczn3B0bp3t2v5V68MCGZ021g5hNtBnas7rfw2NAP/aB9uj?=
 =?us-ascii?Q?98ZkUP8hWDlUoTMMFJaGzhbxE6V/aBIQc2OMJY4MTi8zSarei1EjKhSQODmo?=
 =?us-ascii?Q?7fexRmIkA0vUfWW9b1ZXshIUzyBu2AiWSxjsdexUa7MCfuRkFG3xoUzMFio0?=
 =?us-ascii?Q?KCcRV4rwQLJ/Us63tvnZpQBt1pMSx2Q7DvRnF5C9cl6OMFXkTf9tAeo27hGU?=
 =?us-ascii?Q?qTu6msg33Zu+y4GvyKJ6N4YVEmRvq9pVFiE5f0c8HBjaYztNwQK4e9zlCtoq?=
 =?us-ascii?Q?4sFsJX1ZsqRwcWFztWSRMFpqQ1oWwlXbqQVcHcN8Ypd9ITCqsibcTtLn92LJ?=
 =?us-ascii?Q?a4wUjLF+qw2Z5a7oi6PLrln6KYLDzI6VphLA20fc9Uvcd0S/k2mrU5T6gzxd?=
 =?us-ascii?Q?1jfkvnjaCoXqbsnIudLPa91oSOxrsABHVP6JqHIda7NGan84TrMslDltMB3R?=
 =?us-ascii?Q?c40CmnxILkhzwRZNBXEc7qFZR5t88YlihR52Ox02tciX74ChoUPbS8IPIbg3?=
 =?us-ascii?Q?K5fXvyvFw6KIBnIpwnlbW2o4D8SIyER50kziPsXta9a2F4zRmCCUPzIdBPye?=
 =?us-ascii?Q?cGSvbQ7MqYYRf5UQlEntEtHhhbbHIARI858s7S+Wz/WxjxJn4xftHVB6Rr53?=
 =?us-ascii?Q?kQ6TnBTj6Qp646QX9j+xcnvWze/lsMQIzTdrq9/Fi0BEIc5MNHcmmTslZhTL?=
 =?us-ascii?Q?i/nX+RdUneZn9ePHRMhQOVV26uKZ5BqSJ9AX6Z0lmObRAnyRToIAy9TqRo+z?=
 =?us-ascii?Q?ojs2Sh9YUULwWx9leD49bhF/FEv7XHEw2YdiXVY6aLqaMymCwK8oH96xgZ6D?=
 =?us-ascii?Q?xHVal1F+Ebn7hsN2TWPh+F2kHaBLhkc0fs2NvzLkrEkCKtm7K9oWCOvAbJph?=
 =?us-ascii?Q?36sSuhBUTV+pSLAK93X19yEwZCugif3F95bjHdy0j06CCIzTmcXMTKhVGjwi?=
 =?us-ascii?Q?ujMLVE4Vtjj5Zp0e7I7DPbvjNubiy9wIXOwqdcf3g3MV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9254.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Sc2TtySqDrnmMz8Knw4GmQ2rQpRM0NfXQeR2acwhZLOGPpkSBhGHk+DNr4Kh?=
 =?us-ascii?Q?DQKCCWpyjmXyv8a4Zd5OIN+i7kXXk9yDQAqNx6wqsH5+A5sbaAoT5vEtbZ72?=
 =?us-ascii?Q?QS3sZpP0L7NV6tHFJB41k8IIVJrUTbUT7cENmxBJY8oi6H+Kv4zWPjtk4ZPh?=
 =?us-ascii?Q?d74jYvtSfJU5lFi4I9v1++9TmMuXzTpxR9/a9hZqfN/wdSp+rqUu3h2GP/8D?=
 =?us-ascii?Q?v2Ywmhdj1gIX5morSDmJKAcW+O4DAZYG8oLRQlOXRmCOxSen/Ct9McUQFQWw?=
 =?us-ascii?Q?IASAYlmSxSYI5/hu6hBw1vrWfQC8fHIXfT+u0TsZqTkS7tY4j33WdHwCU6JH?=
 =?us-ascii?Q?5V6ABnP5/Gvskk1VlSmQzKekIo3ng8mGIjjrbV0nVhKwwD5bo03euAHk0tik?=
 =?us-ascii?Q?yAU9+CDUageq+nrYeJwUW9EQUMdIvg+ZBCBGNqZJPi0dyUQD/refjPwDXptt?=
 =?us-ascii?Q?KCCs2UKfGHnD735Q/WgQrJ4wa3eAvFYJED2G6uNqY7h2wg6R70g2VlSv34St?=
 =?us-ascii?Q?LWoqS3cPQjF1k9jbcT8uMrluqeLLxn4Y4ORom3DFtQG2AYCj98GjclzP/qUF?=
 =?us-ascii?Q?oJWNKoNBtRw/YcY1H8XUDfPg/6Rab48+Rrpfy97O4LQweKTukOAfiCGLeDfz?=
 =?us-ascii?Q?33pDa+NWO2rPNqGHfibszmKsln7XAWcYvEMlFkFqEoiwqV0L57Lrw9uJ+m/x?=
 =?us-ascii?Q?EyzxxJI9u5IOzqhSdm/O3sTO8Ju3mxO7lecgsDaUIpazxTPjjfTTO1MBaLeU?=
 =?us-ascii?Q?GipxLdAZ36WEiMibBqFwZUuvRDyrGOkqTNcTuxRLjaE/LMcqbizQ38QJnXra?=
 =?us-ascii?Q?57mFOm361k73IwiLCZ3RpMate6HkLpBM5PcK8Z0NXTPTYVvcmtc53E+40uIF?=
 =?us-ascii?Q?KqnzMT5l/G1oAj76m1mtleWe42tBWEXPvXlIJHs136At63JYz+VZ3td55cof?=
 =?us-ascii?Q?q79dlKq37t1R6ZPS0hN/5/hvlwD4eBfl+v86sIou38JGZtlUWLK3mLgUHj3a?=
 =?us-ascii?Q?97vuvYmWiJjkk6s8VOGBF926yN/Uka43kxsXgLmaZxkuqbWOFa9lbFX2JxLf?=
 =?us-ascii?Q?uUzjCel8flTHkNDm+Re+2OgnIterFmKa+I3Ruv3YshVMvK9MOK/6CjbFuqd3?=
 =?us-ascii?Q?LUNQypugPW7eItevYDxxQ1gbFs8+P93KwUQTvqMQMMSp8Yu188bsZRmayZzM?=
 =?us-ascii?Q?cXWjIbV0pdjhRfvu58ycePplpunoDrz7T3oHYcB28uTOd+hEVPlps24o/qyM?=
 =?us-ascii?Q?L/Uz4GHpgj/nWCz/AJhBCQOuRCQnATaTAEVuMxtQJmsxVPvI4VW9HbKyWsT8?=
 =?us-ascii?Q?zU2NeArOUd9GU1etUJ99RTXLgnaNNo0EDLEbdVbpDUDWChnJsNqMHyA849uQ?=
 =?us-ascii?Q?mvE5H4RAkMSvOAesXe+JYNbGeZrEZMd9ds3qBB67Azwz63NKuRjO9pHrEdUW?=
 =?us-ascii?Q?DOVq3C3skf79BXn6cKZIJTbVg/TdSpZwCG3v8TFIJ7e73ln3XJ0ZKGmK8qc3?=
 =?us-ascii?Q?+f4l46k4PQdcx/o/LDgZ6rxPr/TL+DSco1QPxs4i/TpGxyWIv8MraSDkTC1S?=
 =?us-ascii?Q?q7dcQZi4/UhpSxme1/Jwipwve7VDNbwZleZXqv6BUn6qyN/TbgOslNVL4G2+?=
 =?us-ascii?Q?yTFUc1UWJMzrT7ALQTxOkW8dgMh2lf4acGkpz544GRBJqZyge1AqWg53qEj6?=
 =?us-ascii?Q?i0uAOeC3xriduzwpPBIbCLdH5YHC9DOSbctqsp8Aps9wi3uEiWppmBCbYDSK?=
 =?us-ascii?Q?QTQBStnnjg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9254.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf1ccb9b-aba3-4674-bc01-08de57456259
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2026 10:27:44.7439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ssc9GJpDbzVn989TyD6NQkhpi4GrKTOydjRmrDtwYRTvgmQh8QcAW6KTyvrmmjJqw55InI0tZonnZzA6vrJvdDyT2HbuigbV2hxXB9xaxR0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7278
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768818468; x=1800354468;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DIJZNIvoKAr8bukFCUa+ISURlCF/epNsxQn79x84MLk=;
 b=LfJmU/89Wqiey0E7i693c8fbsLwWE1LdMuvkODg3funPaeTAvom7hkTn
 8S6s/EfKzK5Ld5s9ermc/w8CB45RKigw7Ug/raV06s1FzBj5MRmj41HOY
 iP2rxhnvDuf33DL8mhCRZupFoQcPrdQ+pqdlWy+Es63SEibEzepd8jDBg
 VEA5R5+we6Q8T8Q+LdkvYNbnI+TsSsJsreSEDANwfLwfaeMxfmPqYZslS
 XjNfc/OGwRFIWe6EDcr+Htn8ul3XPe7Q+LUZq0dnHMbbEi4hpjXhZoq0H
 SJL15jsEpKyfWxOf3lea7du54eQ90XgdZV7Gjpd5z+mJLq3o1lrBJfhkB
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LfJmU/89
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v10] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Monday, January 19, 2026 6:00 PM, Behera, VIVEK <vivek.behera@siemens.co=
m> wrote:

[...]

>> >@@ -6938,9 +6939,20 @@ int igc_xsk_wakeup(struct net_device *dev, u32
>> >queue_id, u32 flags)
>> > 	if (!ring->xsk_pool)
>> > 		return -ENXIO;
>> >
>> >-	q_vector =3D adapter->q_vector[queue_id];
>> >-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
>> >-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
>> >+	if (flags & XDP_WAKEUP_RX)
>> >+		eics |=3D igc_sw_irq_prep(ring->q_vector);
>> >+
>> >+	if (flags & XDP_WAKEUP_TX) {
>> >+		/* for IGC_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
>> >+		 * been already marked with NAPIF_STATE_MISSED
>> >+		 */
>>
>> The code looked good to me, but I am not understand this comment.
>> Can you help to explain why the NAPI will be marked as NAPIF_STATE_MISSE=
D?
>If the napi was running it will be marked as missed and if napi is not sch=
eduled
>the function would return false preparing the eics value for soft irq trig=
ger

Thanks for the explanation,
the current comment "NAPI has been already marked with NAPIF_STATE_MISSED" =
is misleading
because it implies this always happens for IGC_FLAG_QUEUE_PAIRS. However, t=
his only occurs
when NAPI is currently running. Could you revise the comment to be more acc=
urate? Something like:

/* For IGC_FLAG_QUEUE_PAIRS, if NAPI is already
 * running from the RX path, it will have been
 * marked as missed, making this TX call a NOP.
 */

>> per my understanding, for IGC_FLAG_QUEUE_PAIRS, rx_ ring->q_vector will =
be
>> equal to tx_ ring->q_vector, thus, no harm for eics to "OR" the same val=
ue twice.
>> Am I right?
>Yes. Exactly for the IGC_FLAG_QUEUE_PAIRS the q_vector its napi are
>The same for rx and tx so calling napi_if_scheduled_mark_missed
>the second time would not have change anything.
>If IGC_FLAG_QUEUE_PAIRS is not active the q_vector
>extracted from the tx_ring would be different and so would be it's napi wh=
ich will
>be then
>used as the argument in napi_if_scheduled_mark_missed
