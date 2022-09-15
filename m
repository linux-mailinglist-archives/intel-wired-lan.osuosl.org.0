Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7395B9F95
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Sep 2022 18:23:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 351ED408F3;
	Thu, 15 Sep 2022 16:23:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 351ED408F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663258982;
	bh=W5Oc6zGEdUgitCOBCwFILuB0uib8pHHkGQdm2N74h30=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=M9hFyU+/ED2oh67lyj904+XVtx02r9OZ0OsWNxiqESoBriT5/Ic3tpkiGjWBWu/jP
	 ORc7YmhhDrdViXkbozli0rJcFggE7MV1BfOXlwvqRs/0YJw1Yftg/lQWugh7J+xFi1
	 jkxnWdPABvLwFkTZ5kdLZIalHIQBK5PfUXd/94meyH4xZkOxxGa4uqYISDZsI5PFt3
	 33okDzmCMuasPCRtO8mIp8WfTV90b3P6ksxVm1swIguUyGBMqsopKY/Wl9p3klWIUl
	 gMjx9RZRq+iZjbE06B9MMxd/Cp69eFyTXtxgahDmog0O8dSYk4GcCpDanwXOQY5G4Q
	 Hu+G5ZnX22ouA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KDfplBEWsKHx; Thu, 15 Sep 2022 16:23:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B8F6408EC;
	Thu, 15 Sep 2022 16:23:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B8F6408EC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E70E1BF3DF
 for <intel-wired-lan@osuosl.org>; Thu, 15 Sep 2022 16:22:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 70C98408EC
 for <intel-wired-lan@osuosl.org>; Thu, 15 Sep 2022 16:22:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 70C98408EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 64Xj6Ppbai_J for <intel-wired-lan@osuosl.org>;
 Thu, 15 Sep 2022 16:22:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 522964010C
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 522964010C
 for <intel-wired-lan@osuosl.org>; Thu, 15 Sep 2022 16:22:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="360501618"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="360501618"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 09:22:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="679589462"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 15 Sep 2022 09:22:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 09:22:48 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 09:22:48 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 09:22:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 09:22:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A6kOzV9lUbGPTV6W0XGsYFCt0FuokHRtKAsOQ62A7EBo3oKHIgBUDTIqEZT88yY1vEYBFYN1UDKiL2thU8ILIlWP2O/ofAHRgnAF3rEGmrmeSKLQmXRW9V2Etc3akriIuby2XvN/Buk7BUiX6iOukHJIf73L8kAYCDbIe5RDOUF/yojDjhWT4zUyM/jiGlT3mYSdnGK3/R6IPfH9X6dNwizRWWr8RArEJ63J2Wzph65xOt6wB5JMeErTc7VGs/qIoOIXx8NQXHcKelhUPqL45y6C3IuyLuKY9NyP+lhM9ZVGn1NJf67qTauWkSp61N1Fv/dSzO6pqmbXySG8BQ04aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/33c/yvsdIMnncQl56M1o2S29MwIFKLzQNbqM7GLxNk=;
 b=Ok1SxPSrh4RaOn2HaDC3bDUKQayJeHIqizeHevMESMK5SPSz37XQoXyCsmsC6Kf9g0GPbyd7zXHoW3QiOpBATOtc7IQUQEAcTh6tpsbZjg4T3jfn3uqH2cmYPBx55yt68YMvZvBBG6QC5X6Fe4BXpwzbwli/27S56KowToSN5Ck1JeAUZwLBWj0xyjPziVnE4jU6dn0NS1vUf1kFFA0Lj4HNl6sHFd/wfX7Ed+fdANGfFCT4HZM8EIbizPCf+vhR7qkxCIBrSk00MpkEpWjoh2YaUQiWrvWLIJMnrUIxQ/SSr0sGvPVmYczUntZ4LuYMPffBoTmLmn0iiYj5a2K33w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by CH0PR11MB5475.namprd11.prod.outlook.com (2603:10b6:610:d6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Thu, 15 Sep
 2022 16:22:46 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::bc61:cbee:55e5:5119]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::bc61:cbee:55e5:5119%2]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 16:22:46 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH] igc: Correct the launchtime offset
Thread-Index: AQHYyR9jC/yHx83ALUe38kXapHYVRg==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Thu, 15 Sep 2022 16:22:46 +0000
Message-ID: <SJ1PR11MB6180DB2E9D101085122E71B7B8499@SJ1PR11MB6180.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|CH0PR11MB5475:EE_
x-ms-office365-filtering-correlation-id: badaa090-9765-476f-9c0d-08da97368640
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5xTStf1z/6CAI+KZ27JacDDh32h0MM2AH1qxQg39eD5r0TRviUwIISQIY3zX0syRIRJDuXoEZ5y7LTt9mRLLAfLmTj/R15Hrrge9nT/KwZWhTomIQvSTvdIoddFBn1+6YuDUpBmx80OgwhaPaw3UXCU+ibrIQi8oUi+L9mcs1G3cGuOVJiVLfQSdKmRZhcfgQcfI3ZwpODaT7aBgJ7ZmjbOn8EQCRnZmrwneffC7m21Aal59B8EglEFqmcyWEUvy0hPCFZgvWs8ic3T4IpZDWbocHN7sYbU4rmZZaedPDrAtgc2Mx2RxT7u6zpnZ4lxQ3bq3Mw5PXeGF6cmHz2NdfCpFVD9wzZU8oMU6uqqkSQic66mnAdx+M1RsTOTCagCG34p83ODJ7OzEBH6YQw8joCkZDdVi5oOV9Kvkki0otOGDmF7MUwKkf+3eWYZwp0XToYHTt8oqKTZrPMF+kCGb4vdC07cZ35yQBxZUOp6O+uOBpVcYPjNARWlF+IonN0zlQ9h45s4c4JqJ876xnI2ddpJuzA58qKT/6NQQyZUhUvqRYsh7l7JMhjL1XlSu38jTgWYuHErhkJzdtAv4Ln8tHL7yER30VNdTaFp1N8lNCSF8u7bAKx/Jt19fySPaSZrBhTa4Bm8dp0jWj9XzVXmOLRO317NeWF3wXr+IZeIeVaFqhqf/nqj+2EEGOji5jOSGf9wy87ThTyZ1LNTpkc2scxJjKJ+nvE6LjcUg5PQCpJ+7IBD8CpHqnRhsji48SIcoZlBDTQAeQjlqQCBp9n1+RA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(376002)(346002)(396003)(39860400002)(451199015)(5660300002)(6506007)(2906002)(55016003)(107886003)(316002)(41300700001)(66556008)(8676002)(64756008)(9686003)(82960400001)(38100700002)(26005)(71200400001)(66476007)(8936002)(38070700005)(66446008)(186003)(76116006)(6916009)(52536014)(66946007)(478600001)(54906003)(33656002)(83380400001)(4326008)(122000001)(7696005)(86362001)(558084003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8NPCy+4aeIVLx6XuvL3xAXzatcjKMfNxEK1z0ijrlcy3Cv6rfN5WythfRUrq?=
 =?us-ascii?Q?NfVoHkm6FNkfLKknR+URI8aGH77+TdHWRlnEB7BHICaw8ZgS+gLpALZStsbs?=
 =?us-ascii?Q?r9KikWuryOLlPjmE1QqV6WWmK7GmZ1iEeylZdE0F8oDNwTtQWF711L7Ok7ym?=
 =?us-ascii?Q?QWJeH9wzm92RjtgrJvUylmVmIK0rNsdrB1TJF/JrwYgNkEAXw7W7HrJ4EgpV?=
 =?us-ascii?Q?jIwvs9ZeyBTiTd9hwF1zMSHqbtaLOXn3wcIFN3TJMq3YAlDDiRxORr+aUvqY?=
 =?us-ascii?Q?aWE+9Jnx0rNEfGMARWVBzXqlWZspLovZqdM6W4j1ox4xAW4n23kZt5B3rEO+?=
 =?us-ascii?Q?683r9vR5E0hhE+U3QO5VX0rrOj7hNG01oFz5lgsEmrn2uoGq46RZnLmNfK/V?=
 =?us-ascii?Q?TGmsi3N/ZrXkHzcZgtBa5BrdaMtpN3m/IO9Fha5NjUdfj7+CxP9ItvBso7So?=
 =?us-ascii?Q?J5XorEKk5c1HTnFy5jaIPycv/P1+ycAk9mEUfTI4G6pHDQqdUU0myUtDIWDh?=
 =?us-ascii?Q?cMbLrL6q4wfGgrOpaSEsZBsGKpQtVYHywJAzlSk+bYf/iB3Cr+VOq5P+9Qct?=
 =?us-ascii?Q?AWI3/mrskK5J1O+jx4Ex10danSj2dppd+ZtXemcxAEMFLX/O8o5AHIVD+smg?=
 =?us-ascii?Q?X93/+Lnii138E5FZNRfoZza/wXqMZ1slw1UpQgoMeAW4bwcSTfE++lLwLjuT?=
 =?us-ascii?Q?sNHf9kvsaC+xyWTX9LJw+m4ab97cpHygkAjOm0MFqD+laJcjEtkm+Sr8bYs3?=
 =?us-ascii?Q?pdlkZVYdqIADv/7YXiVPRgU+AAFFj9VzXZ7gKINZVVOzOigHIb12z8BHw+DB?=
 =?us-ascii?Q?cpcmCC7xeTgncKy26ZD/+rmQeUAGbCpCWnh88oQTVczHB6M7hRVhAq0vO+kW?=
 =?us-ascii?Q?mUI7QVQ2Wy6Wla1o3V78ov65N3F7VM0iJhSgcQFrZVsc69qOQTp4kBTfn+lw?=
 =?us-ascii?Q?BySEsxHu5ogdXbvGtubsV5NbnVLTYxqfkEA8aFH7FRBwjN7qBEL1DSPQOHcI?=
 =?us-ascii?Q?oTLwn/G/pGX25r25z+RsBlIUPREObduauLNuvSfs9Mlt5D9OcScyFLbeWIu9?=
 =?us-ascii?Q?XbJzsmJ33/hLnVWs6UMjrjbH08q/XocyfNEpvDW33jFLyQrIqF0fKzyAdMBT?=
 =?us-ascii?Q?7a+q25rkRD2B7zT/0pbZZkwWAiA5D6lg14TafTbQQjuIhClWtcdj16eDyRX6?=
 =?us-ascii?Q?aYbKKgOl24VqYvw/NOap+OQZl6vDD80R9vGnu7t2NxBp/yXM/o8s1Qhq8wWo?=
 =?us-ascii?Q?VEpwiiY1SKsRO8JMUB6v6CbU8GFhfz1xdtiyFKUifXIdn0/UZlR7tby0Lci9?=
 =?us-ascii?Q?NW+2iEMq5yY6da62guBP5qPtfJosQN3pwZJHNt1mSFB2zs8Suc/BL4+sRX5q?=
 =?us-ascii?Q?Carb+smVQ/nILJIfh4EajjUbpNdUSHzD1iI1ZdcO3UJyANl3TfNSLp3x6wMQ?=
 =?us-ascii?Q?z0jBruCuM3cnvQQj/UZL5HnkCWf5rGuHsAS6SiCAeWUOfRHvrXODPU4LPerP?=
 =?us-ascii?Q?QXPDuc06F9VZyJEE7zZTkwzR4aYOmzKdQVyvaSsFzfERUiNkiwojMUkGp2Mu?=
 =?us-ascii?Q?rZzjhqKacvRcr6H3ePgVsb+EhNSigMTlRznTM7UzZK3AYeoCuzFbEUkJjK6k?=
 =?us-ascii?Q?YsKxdCIlyyiN3xUswT8nd3c=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: badaa090-9765-476f-9c0d-08da97368640
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2022 16:22:46.2599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZvZ+zawZVe/xT2MD5fwpYVDM663QwiqCLrv87XaVDx133inqC1LeVaXtxySb28g70KxE52ZUns1t6Hr8N9sqQnwn2yMMEGoAAHvdgwOVxldzTz9df/olL3gowrOcz2/L
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5475
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663258974; x=1694794974;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=/33c/yvsdIMnncQl56M1o2S29MwIFKLzQNbqM7GLxNk=;
 b=Z43P0nueuBjkFxmw0taZBJhwBBBVFsLPaZIzFyvx+m10JU+5weqlNc6D
 Nc6CesJMvgU1bp+A90TZkTxZDmcJ4555wc0CqhUra2DvEq91NwUfLIymf
 2UA+67CcIB7fA+7EoDVO1RdmTQbOFuWC8IaoWOu7E/4FthaddVE5Dz+Wn
 F6a0k/sAvqh5GvQu/9lkFjzmU85A7cvnMvd2RWJi3Q/7kjFrezvkT3vWG
 2iLL1Zf5vq23x3sRUIlVFp3vH8BUGjp7whH2xP5Bnu4HQNcFUJWnIOlbu
 G5Xx8c9Y2i4gSpAObWuOU67qGPWnliUtAB7AudWOpI0nlUiqBF1XTUnhY
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z43P0nue
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] Recall: [PATCH] igc: Correct the launchtime offset
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Zulkifli, Muhammad Husaini would like to recall the message, "[Intel-wired-lan] [PATCH] igc: Correct the launchtime offset".
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
