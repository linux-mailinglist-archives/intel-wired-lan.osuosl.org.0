Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 516F17FC07B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Nov 2023 18:46:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E015D41769;
	Tue, 28 Nov 2023 17:46:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E015D41769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701193562;
	bh=ZmxRF354oEyVOOek8bDVQH5BQ+SIPNG5sONXHRLldCk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VErBJb6Wc9afRU36vw6X2irpKJWXMVmB7CIWfdszcokxiolcTRqipy5YXF+VVBj7A
	 i60TdUM+xBbZZP4QmeWXLGXWOAKSlaH5EKVOytb4QF9sNIObeULmG2fOeXrZPx1X6t
	 PZjLOvDqpau0y0Ov1Eokvf6ZJWgy73VP6SOVEezLWT7Xk+uaZizmDDn1F03s0C50RU
	 dL3beMSy/P0kaBQ/7ipX86iSihgE3zqhnUqklWB5EwulAosM+XEizuMAw02hx2pXZ4
	 iUks44r1MxbdEp1hv8aPBsQYjj8DAwPmP1H/4MpvyvZHoDCwCiIcxRU9Cjrvf8g3o/
	 zx38oWmN08VEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ECQ64V-YB4kf; Tue, 28 Nov 2023 17:46:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D081405A4;
	Tue, 28 Nov 2023 17:46:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D081405A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D88451BF419
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 17:45:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF0F561099
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 17:45:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF0F561099
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KmLeswMccno5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Nov 2023 17:45:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59BDA61092
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Nov 2023 17:45:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59BDA61092
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="391846507"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="391846507"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 09:45:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="839140210"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="839140210"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2023 09:45:54 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 09:45:54 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 09:45:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 28 Nov 2023 09:45:53 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 28 Nov 2023 09:45:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KkINu07X8HvlaHEDHoeSYad5+qiiBc5WYQhzWEBXA/RK0xCDBKzBQEh1En6ylrirBJgmZmmgb3povSRypGrYQ4EjQHZEXwAukhhRG24zOseWHy7/MEneN7WDhHDnzw3C1skq3c9Kz5EwYMBVyalS1L3yDD3wtI9tIASKSw7bkA6ZjpX+cvIUdNzyJRglrZudQdBOjDb+n0FdqzmQJ1Kvw6kg0sRxIokkTGFZmm5g2QTET/iTAqWUUfE5iOGZnz08GYKEqJneFNxY+4663B0f22RTWYozIOpZWgUVr9t9DTPMKnvY3NPD+Fqkxy3eeDEd6MFNaKTClWiaeHrliajYKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HvLfFQla67Eey6Wqt61tAJOt0/xJ50E94JyXiwKoMOw=;
 b=WmYDo+PSSuqt3CVXjyIISNb2icyI/xPfIVedGoUqlVf36mURtELOr5fBOXgvY6GqEpIif3owuVFCqoK+87j65LKZf2PlTDhYn5FvXumaiGLFTzzd3v3gxMAdhYEEa67eVA3KTiI05pAiI2tBigttnJAp8fQ2ZzxguY2qg6gp9NQxztCyzy+RmtrgELqPzsuzsYd3MydpAr+SqvL0yINfDwBnQxuvP4cwqFW+MhYjs8tLDJApVzu2mKD4RcBReKJtapGVxFVmgizra0nBlxelSZ6qAn0XfOirHQHCGhRX+A/HqADj3sxguUkU0dlbzL43hc03V2FSeGsaJTNZjon/WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4257.namprd11.prod.outlook.com (2603:10b6:a03:1ca::32)
 by BN9PR11MB5339.namprd11.prod.outlook.com (2603:10b6:408:118::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Tue, 28 Nov
 2023 17:45:48 +0000
Received: from BY5PR11MB4257.namprd11.prod.outlook.com
 ([fe80::dc55:8434:8e81:bcb5]) by BY5PR11MB4257.namprd11.prod.outlook.com
 ([fe80::dc55:8434:8e81:bcb5%4]) with mapi id 15.20.7025.022; Tue, 28 Nov 2023
 17:45:47 +0000
From: "Bahadur, Sachin" <sachin.bahadur@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH iwl-net v4] ice: Block PF reinit if attached to bond
Thread-Index: AQHaIPe/QZ4HasPNt0KtTZtgr5dQa7CN6caAgABvukCAAQAbgIAAqEWw
Date: Tue, 28 Nov 2023 17:45:47 +0000
Message-ID: <BY5PR11MB42574A519BF05AF80BC03E1A96BCA@BY5PR11MB4257.namprd11.prod.outlook.com>
References: <20231127060512.1283336-1-sachin.bahadur@intel.com>
 <ZWRkN12fhENyN4PY@nanopsycho>
 <BY5PR11MB42574D2A64F2C4E42400213A96BDA@BY5PR11MB4257.namprd11.prod.outlook.com>
 <ZWWYx18w2BnLyAZL@nanopsycho>
In-Reply-To: <ZWWYx18w2BnLyAZL@nanopsycho>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR11MB4257:EE_|BN9PR11MB5339:EE_
x-ms-office365-filtering-correlation-id: 06548052-112d-4379-3100-08dbf039dae9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6UU8fpRNDIhBET6wARPnKHWMlswaRvV2p0Hmh/a27uc+rW5l3pIVAo5H5mtgdpXEjFlWZci124s2k5Y6tCeiQjEf9SXECUlplFSCgQUwsaYR6aRGJpg7UJaVfDIe2+tdU4ISPsn8btYBh/ynWTVX/mVv0z4pcFc60afF+cucBr7pB+X9HZRRvYsM/aTPNF8uAoQs23myPwOPHfDgfcQnRW8xys3ci+l+Tu21R/BKE+/AG7qvcFAmBUzJdSYRcrXnMZgQsEp6bNGzhCnv0b+WXPcXY31wSSmjBh9bZ1US5fpN3Fl7y3O0A8+OSjsDGUtAhlReVOFaeWpY+cxx5c7NECad4pt4vgtmbFMa6lJy5F2RMxp/yL0to9QMe8a5V7r1Lv7BSJwiGkV//lXzDlRZ028yXY1AUpr8CDZlYICOFGYMa3torfUwJWhmlz/WlcF2Ws7lKsPeLZZjMub9KkgcyfnRziKpRw0b+FaPIay12rmNuQnwM6F7ngqNiydohm4H7VMZG2zn7pnPeC4ZUwSqDMKcNmCewKJ/8oRuOjBPnejAfpSYH/jMOnSLs5SoKhOG7pJGcydaNS04txFmcUDrHoR6MTAnHy3FYmfTrNQ3Rr1zLOnLK+v+uiRDgF3eECOq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4257.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(396003)(376002)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(2906002)(52536014)(66476007)(66446008)(316002)(64756008)(6916009)(54906003)(9686003)(53546011)(71200400001)(66946007)(76116006)(66556008)(41300700001)(8936002)(4326008)(8676002)(55016003)(7696005)(478600001)(5660300002)(6506007)(26005)(83380400001)(38100700002)(82960400001)(122000001)(38070700009)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lMuui15hSAw4zgwaFmXg7Q/3q0nSt6DfUQfANFxqYRM5ZihYFHq+05DsXX6W?=
 =?us-ascii?Q?8JxQB4Wth3F813BQDCj3X+pLujMvBU6WLGZAu59hUyDOrIyaKnB3DDWF+VU6?=
 =?us-ascii?Q?wfEx/STYsNJU6Z1t1LSbVbHfrPXQyufFlpqsPAEnDLaT/AKMFvrfwV9/D6x3?=
 =?us-ascii?Q?WlBuHcywvFK8pW8tMN0f3WQHDyc/9xAHu9QB/WFk1LsODgEP4uioNSECVg1K?=
 =?us-ascii?Q?9Sbs2JSBumL1wz8iG6VRDGKy933GntULYG52o1TCRqGMyZXMvAbmSIMliWoF?=
 =?us-ascii?Q?PQdKfX6Tn4fgX7OM9fhGXvL2exfZvaOhyE/xNOyu94gMnXBRjvfhhh/+Cm1J?=
 =?us-ascii?Q?s87jT7KOEj4tZz4Ys5aUYLLbzxfNwdbsKTX5vdnC4I4lDgVQCp75honrcvPo?=
 =?us-ascii?Q?jOFBVGMciuudXtkMI++WUOo7cRN/XGb/clXKMqHHsDWEvHcg9DX7Td93vC3C?=
 =?us-ascii?Q?RdjxF7teEN7tO97nVRXynh57nYsaYS543NIWzHqJQfZ17AmAZd5SDC3pnbpZ?=
 =?us-ascii?Q?1/udAgvHlx+PxXrB6GF+CnjXJuWaCYLe30G1W3zh5fXGiDfX4BYjhCEJ73d3?=
 =?us-ascii?Q?nVhT/BiFxVd04QaE6mSObnbiA0r1u+axqDueuKCC4V1fEhR2JnH+UMzFQ019?=
 =?us-ascii?Q?YXfA2zV4cutk889bhQfTnJ1gy6G5v5ajokhN2hLQlowU8aVKvxcIwjWLNCWj?=
 =?us-ascii?Q?TkJ0dncM6EJr6ULQbTlbIMYkeqmND2PTunLWUXCCBIUfJfRFyXAZ/JQ3rM8Y?=
 =?us-ascii?Q?XKktABAFLI8Mo2UUUfNub2lsU4DfMlNsskYkFKlWOQRu27sVF+rOboeYMzfu?=
 =?us-ascii?Q?2ZlXvgubFwR6QUOkrstzKO4NH5l+un2fQU/JkYaKjZ5tldwPIFj5KUBZ0IEO?=
 =?us-ascii?Q?xUwsvVnBZpMwxp3vITUzKxWXqGul9cdZs+rhkMBbSI3EgIKzz/t6xF/HqJir?=
 =?us-ascii?Q?jUlYtTw0X+/VbDOCL9gDKZlrVNquYfy9ci1wunbiIO13+ztZFKq5zqAPF0mq?=
 =?us-ascii?Q?j0wBFbxzJCJs0fpPGNabC9oYI72Lthv7NNTFPftZ9cvMXeHHgay9EleQt8RT?=
 =?us-ascii?Q?egLx89TjJ+ezFGy8xy5W4bohUxi0n/bSKx+OsWuFN83KRTL49NcfG4ANhTxZ?=
 =?us-ascii?Q?dqPfSjH8kHx0qhGU5/RH4uQ44ooPwcU1R1+qOIxvCbIRJ8HkgzUmyONEfL6z?=
 =?us-ascii?Q?fEvvlb1TqIQtr+XWXeBrv5S2K2O6CeCq37C869t/4zIepnO39vpDpANGZ5w7?=
 =?us-ascii?Q?RLMhTTQ2XQ4XYm8NTS739Cw1c9aRl27FWsSi995DpWPrCGb0FhN3cvqE9iiW?=
 =?us-ascii?Q?IBsrtDvWgv8v9J/d3F0hZlxn6vymIcyMu5hv1GkPvur57Clof1siwISncS/t?=
 =?us-ascii?Q?2K8X1d8zahhr5N9QOi9pGth5C8Fa2t3/ThNw611lmVPkpwivpUky7Bq21XFn?=
 =?us-ascii?Q?bvM/lducU36WjQ2HG4TR9ZFYEKjB9as19SBJrWd7nUmo4fKtIR55ZoURFNOd?=
 =?us-ascii?Q?aoka99YaaOYr4gv8tO/NQoRRCs054ijAJYdu3vjv4e7huDd2KkQpepqtljrG?=
 =?us-ascii?Q?IJc+9ju7nfalqk7hJ3Xmg7u/Hl3hvjT41J6dJRPX?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4257.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06548052-112d-4379-3100-08dbf039dae9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2023 17:45:47.9027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CCourXkA3rquhqReFs8mQFpz/FaVuhAYefF7Y/DHB7YwN8LaZW5LFjYit45R4qNjbqX6nD8gHVO7VdSK5koXXfrpbZTczawHC14VavjRqIc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5339
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701193555; x=1732729555;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=54NaTsElduO2628aN6A40NL+uN6AZhhLvZvYuzQRP/Q=;
 b=J4dSW5v6BIVJMFOuc3/Z8QeZvKy+Xjcyomfqk8arf8WcG2XB9P4FhrYL
 Tfg0+764rFCD1DkENqvG/zoFXIUDkSV4qO0MQNZrnJHrL4Vt8u3hQperK
 A49aF997RYBIRew8t065qEGKCXTB1RDV8JfNmixKaXz6cNxNSXI/o9/d6
 bx+gNNj4Z+9FYIYjRK6jhp5yF6OD644JzepJvayhR7uXYODylkBVcC865
 HtnubAXxh1TSG67o4oGwIU6KxBHjMRCnROzV+rUXHiMt00CVyx368ZqQf
 raWVg9vS9OmRDtmrL0ZIx369JJwX0BPG2eFhNBXpz1D/VfKgkKElfsPQK
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J4dSW5v6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: Block PF reinit if
 attached to bond
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> From: Jiri Pirko <jiri@resnulli.us>
> Sent: Monday, November 27, 2023 11:38 PM
> To: Bahadur, Sachin <sachin.bahadur@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH iwl-net v4] ice: Block PF reinit if attached to bond
> 
> Mon, Nov 27, 2023 at 05:23:55PM CET, sachin.bahadur@intel.com wrote:
> >
> >> Nack. Remove the netdev during re-init, that would solve your issue.
> >> Looks like some checks are needed to be added in devlink code to make
> >> sure drivers behave properly. I'm on in.
> >
> >Sure. This fix should apply to all drivers. Adding it in devlink makes
> >more sense. I am not a devlink expert, so I hope you or someone else
> >can help with it.
> 
> No, you misunderstood. I'll just add a check-warn in devlink for case when port
> exists during reload. You need to fix it in your driver.


What should be fixed in my driver. Can you clarify ? 
And are suggesting I add the check-warn in devlink code ?


> >
> >>
> >>
> >> >+			return -EBUSY;
> >> >+		}
> >> > 		ice_unload(pf);
> >> > 		return 0;
> >> > 	case DEVLINK_RELOAD_ACTION_FW_ACTIVATE:
> >> >--
> >> >2.25.1
> >> >
> >> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
