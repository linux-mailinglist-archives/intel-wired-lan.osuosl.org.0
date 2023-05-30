Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 447F2717102
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 00:53:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CBAD881409;
	Tue, 30 May 2023 22:53:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CBAD881409
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685487220;
	bh=uErpf1f/m1PcvcigzlQ1qlc7luW68Y2nlMfzs11Zsy0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LmSUTTCEUcxv4MSF61PexT+YN+h3Ls84xgjVpa5tgLKWWZkP0R7YTu5xTvjUjpu+r
	 Zqipj6bwK/TF50VTCsG+0y5edHk1q2SNy44+AaE8q/FIWR0zQWgzwzVpFCzY9J08fC
	 87SynA92dDjpVC+U8HB3AwP4liMIY3Iw/3PW3DfpI0snYbJjPq3RU6Nt2cTsnjkQbX
	 fSb/TUO0UNYT/NyMK1vm8WMbXCNxQmd+dDO+ewCrtDyEYUG2eg9uhsI0Uk/k4sEg7P
	 v/s5IPTFLo07sJKiRJi4VoqjLBZtQ1V6JKwFbi6zFDxjz+sAwVk1zdgBWFFXJ5S7qm
	 V9Tymk+nQPpNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qCqXKxykvD64; Tue, 30 May 2023 22:53:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 99BE48148B;
	Tue, 30 May 2023 22:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99BE48148B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1565C1BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:53:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E047040CCF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E047040CCF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1TTeeHxNC9HX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 22:53:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80FE340CAA
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80FE340CAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:53:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358326077"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="358326077"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 15:53:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="739679668"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="739679668"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 30 May 2023 15:53:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 15:53:31 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 15:53:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 15:53:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 15:53:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mMJkbpR832aA/5vcwTCJr35t0WSIySeZAlkgpt4IP4qYvHMAf64Rqk3hU3wJJYJIkM/bIYqB5grAVOAZ+RWEfGSodryT/O5ev5t75+LPTO+6ZAiuESgqYwX6qIvAD42fIA+/DBVmF65qKy4MXRqJuDYgFcYgMciLcZbKa5RC9ogrf7iihJN6yX1sU1sLBckkksOGgaRzM47SUkCtEfgD7YUSmdQ3+AVzooxfOq9dSztfTJ1yhUMepiBYbDDn74YJF6q0sZFmOwxR/ydYdeE4MwCRA0BHwsZAFdBsVap/w/EN2GIYWoQ5dcF1vDTZ1wQEd5whswElsEeJ7pUIjxNhqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mFZGjKd81KZ/oAG0b1QaFpucJsA/gkZom0SGeciwTyA=;
 b=aEeqxJ/YA3bwyq7u5RTRn8Of1gIJ+JNL92JDkrJzWd+e9gW3kHQlpSYLcAT++GZllpfjDM7PKgtzZD+3kL6+CwaRnDQlzuJun/IbPBtx05QY/P01qsppgBQexcC1YoAw5PcITzO/WV+fz7jvaX/cwflUJ5PBFlagRhjtn34XX1DvxYfBX6CSFR6+C9N5f2fprAOgWnWLE+6n9y//UtfcnFoei5hdomyiN19cDkpfYJtcJ4QFRUiM+SXFfGjc7UwjfCLVpRPyVE84r4xPs2QYpBBsDlVsDcln+hVwqruCWp97H4mS9OsV4Mc2+iBL9Ht1XfU328HWYkzuujs+yHZAIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by BL1PR11MB5301.namprd11.prod.outlook.com (2603:10b6:208:309::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.22; Tue, 30 May
 2023 22:53:28 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::d06:5841:d0e0:68b8]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::d06:5841:d0e0:68b8%4]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 22:53:27 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 05/15] idpf: add create
 vport and netdev configuration
Thread-Index: AQHZjQ1VAarNlICYCkuqtVigVJe4zq9zeK+Q
Date: Tue, 30 May 2023 22:53:27 +0000
Message-ID: <MW4PR11MB591122D57A8B6C7BE127D693BA4B9@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20230523002252.26124-1-pavan.kumar.linga@intel.com>
 <20230523002252.26124-6-pavan.kumar.linga@intel.com>
In-Reply-To: <20230523002252.26124-6-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|BL1PR11MB5301:EE_
x-ms-office365-filtering-correlation-id: 68552b38-f1ab-4ed3-52ab-08db6160aeba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k/dJ5UYlWF2ypSFo9JSnWi7OUExrE/002MeC4l+7Oo4Jg3+lpAS997qBGlsBQAuTXftYq/RDgdlC3e3YHq5eGVstQB7Xe6WD2201m2PXsQ8PuhFnGJaTPcATQhpG9WW0kxMiVrJ+XaVvHOHe0/tMH092Ka6b9ilyGP0dWjWVwbFw6pAcV0Uv+dbXGVvFeGqtPuGasNVOL2aOrpLpCMFgrHB8jTPNpj3awitAagzTUnQ1CL0I11QyIJJUEdBfLt/aYx6s9n3yZijM5OzT81fIBu8W25Hhrnt98Kns4PGYr5c3iACwNTcrEJIh/nVLESh4mCAdro7BV+8686mi/UL9w9qWivtdqMla08X265xl88aZj8WikKdT8sBn7/zG++sf68IbD1abnEyHh4YZpg55BUTEtzv4AnLbQ5ZT/DhZ2ttCLaf9O81OpkMzee5tnSHstS+c01J288r5UXOoCEo5rL3iFZtROOhBXHQUWjTRMgxvgz3UQBMNIqW46KcyXw2fZTtHnVaVnf5hrEG/U3NGgHnVCjqYJlTwSeVuIbkac4Gb7iddtW1/DLN464a9JeqkL+CVDjlsFdGzlov5OZtFuJGjwpFCIIP0zhCrjqx44R08vGXIoNBmm7x0TjRwn+mw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(376002)(39860400002)(346002)(136003)(451199021)(66946007)(478600001)(83380400001)(4326008)(76116006)(66556008)(38100700002)(66476007)(41300700001)(64756008)(66446008)(71200400001)(55016003)(38070700005)(122000001)(110136005)(82960400001)(54906003)(316002)(8936002)(8676002)(5660300002)(26005)(6506007)(9686003)(53546011)(52536014)(33656002)(86362001)(2906002)(186003)(7696005)(7416002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SXhiZ8qFU4NsAJsM3iPascN6V5jiYvp6qg26FdGVEW61SVLn36Ns5zzzPAu4?=
 =?us-ascii?Q?opaeTl3DdkO+8Y7AFMErcBntKGtAkNARF4l6A0rG/fFkY2sXma8zI+1zGt8X?=
 =?us-ascii?Q?cbo5w50B/msye/DBQzBbKdbUT/ePQCZrc9R4l/yjyb0mmEUygo261faM1XXU?=
 =?us-ascii?Q?Wso3uBzfGwKmOdQZOnIqGLeXIGKI44+UmfFpebVYIjMRFEn3Ps062FYkuysz?=
 =?us-ascii?Q?sk/cREaB9pV97/L7TGxleJYlwZVL9ztzJ1dTntwP/5ZxazXZ6MGKKM1I1tE0?=
 =?us-ascii?Q?wMk74WrYTldR2+bCx4nVGowUi9axIEHT3shoAQPFGi7Hi2+K1MiFdODtH+Ux?=
 =?us-ascii?Q?I606YDWOtwYRselVrbyG9aJWESjEQb6yufKtzFbl1PtM08xg2UTTFSaT8Gez?=
 =?us-ascii?Q?6FhZxDng9u/bYoiiaFWfvajVrsUuIyBttRJs41CUhJvVrfRGKMMl9h3tjxsI?=
 =?us-ascii?Q?hWr9e+38nyIFxMG9Sg0a9atrxpxGlBfLc25zmyRad4tovEtUGPJ0Lx9ZOkJR?=
 =?us-ascii?Q?t5e/T8BuxXL5sX46OpWA+T/Zlb2XBH65qT5R6COasphMMiqXqG0n11vJklK8?=
 =?us-ascii?Q?7mYRLbq1k1mtOT7QeV6ZjTaRgDk7FpROyY4N0eJ5VaiahhxfvQnY59wztpuv?=
 =?us-ascii?Q?BRlKl4l9GE8H74VVC5BjV7Gono6bpAea6akrVBn1OVqI7YfOTOqOJMviPGso?=
 =?us-ascii?Q?okbyDT0PhT6YqX9UrTfN5we5x6oXE2eyiEeTUUW+CUUJRDE3cK/Hz0GgWNAh?=
 =?us-ascii?Q?CgmCEPrMU/g5gxvCSj00kO9edBzmPrz3EM3X+Kn8p6iCjRdUP7VubofVYxRI?=
 =?us-ascii?Q?5KdswPgrfcFPBctvsXBbMkTfCTLLArGtNK6/fBu/cUgo8S6BVOzD4tsMfm4w?=
 =?us-ascii?Q?c93XUXxKIFXkJQCgSlX210b+qa4U1wpCg1ge1E/WEV2jWATHIm1sG7zv36su?=
 =?us-ascii?Q?EgMJ6qz2aTx2STSFpsNeAe6wJNZk70tD98cSWiUGdOZsn7z0I3YEqS4Cnvkr?=
 =?us-ascii?Q?/QtWJvIfZofepVMZfr0ZSTH+nRjyUVFaeHwrwstJQz5iNetda+QB1ITIY18A?=
 =?us-ascii?Q?qkdmUEwMX5vt0NC54bEgjedagn+lt4qjN2m9wbtl/2nI6VXQEcB6tPFY33u4?=
 =?us-ascii?Q?7t7Tp4bbISHbgwVjkv9u4du1AE7GStCjMzgSQflRthRSKNY/UVQoVenLge+/?=
 =?us-ascii?Q?Yr1F/t89bPQlBqExlxkBvAzP4P6v5g/zdOZGFIp1ZsVWrEwX/0geVyZBarhI?=
 =?us-ascii?Q?kIM1M++6ivZHwji23UybFeBtXiDXhc/XbIuM8aW+KFoSOM+JXg104ARFQRcM?=
 =?us-ascii?Q?eWiQyfSqDKVBLkvoXHlMxtwzRVBV0+GQ69AN+q3OHVDmp0A4VxkM9QPU3kxc?=
 =?us-ascii?Q?yYePl0M9tG5EdmTl4nly6tdirfgDyt3zCSL49auBP6ofxXn7uwkZgppRxUHJ?=
 =?us-ascii?Q?rBve2UzPgf3QI8S2nZ+/JVflMZ7guno9fTbc6+EWBU6JVEM1KmUnDKgSBnaE?=
 =?us-ascii?Q?8gthMidA7T4dOPMf2HeWdx8GN4pKpNbssWLXyxt8p3/G4Qr97AhFsRd1pkf7?=
 =?us-ascii?Q?3xvDC0/es6LSYE/bbuOlDfsXMJsksB0SG3McVZ7wutrDd7wSXujs97Kj8g5e?=
 =?us-ascii?Q?6A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68552b38-f1ab-4ed3-52ab-08db6160aeba
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 22:53:27.9112 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 75b8d2fBbR4JRA9Id0Z0ox95E8CXkJHMHP7/nFRWm/HFIaGJmY3IGEGFmZIOt0UYd4FZ9Xi1CXVDW3/qwminpzTQnYjCHfGgthypDLvyQiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5301
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685487212; x=1717023212;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/okbZF9v9Hulk8G9ch/HPfMaLiA5MR+yst+oeqBonqk=;
 b=RCLUS3m7C/1CDU7CQK9/0lIwUsy3V4vYimEt6yiiYZ1srweTfr2ejX6I
 0ORxuuu+lFxP3AIKvIhqBLGapcbo4E7j0d+UjKLVd+5Tf00SRi7xE/F57
 6dDGKcozl1TJwr1ficEOvgHZliGrhZrdrFB/x2DQWv96d9rl0kS+ThGhp
 6WIMosc0/VfAn1JzipUxhAnvAaPvPz9zqIVSw2RdcDDMm8O8GWaBT7n+l
 YF/JwfhKXqCzQ5hXXMjenfgiklXAZ4NpmZkbHo5LV19YgIdXGBC9u/P3i
 n1p+19JH7zqVHNfBUWGmOA2JIDdA4RfGCnpLMeNmVZSyVbrlsyt1Gj0ZZ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RCLUS3m7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 05/15] idpf: add create
 vport and netdev configuration
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
Cc: "willemb@google.com" <willemb@google.com>,
 "decot@google.com" <decot@google.com>, "Bhatnagar,
 Shailendra" <shailendra.bhatnagar@intel.com>,
 "leon@kernel.org" <leon@kernel.org>, "mst@redhat.com" <mst@redhat.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Burra, Phani
 R" <phani.r.burra@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "shannon.nelson@amd.com" <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Monday, May 22, 2023 5:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: willemb@google.com; pabeni@redhat.com; Bhatnagar, Shailendra
> <shailendra.bhatnagar@intel.com>; leon@kernel.org; mst@redhat.com;
> simon.horman@corigine.com; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; stephen@networkplumber.org;
> edumazet@google.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; kuba@kernel.org;
> Burra, Phani R <phani.r.burra@intel.com>; decot@google.com;
> davem@davemloft.net; shannon.nelson@amd.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 05/15] idpf: add create vport
> and netdev configuration
> 
> Add the required support to create a vport by spawning
> the init task. Once the vport is created, initialize and
> allocate the resources needed for it. Configure and register
> a netdev for each vport with all the features supported
> by the device based on the capabilities received from the
> device Control Plane. Spawn the init task till all the default
> vports are created.
> 
> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Co-developed-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Shailendra Bhatnagar <shailendra.bhatnagar@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> ---
>  drivers/net/ethernet/intel/idpf/Makefile      |   1 +
>  drivers/net/ethernet/intel/idpf/idpf.h        | 247 ++++++++
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 418 ++++++++++++++
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |  50 ++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 182 ++++++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  52 ++
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 528 +++++++++++++++++-
>  7 files changed, 1466 insertions(+), 12 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/idpf/idpf_txrx.c
> 

Tested-by: Krishneil Singh  <krishneil.k.singh@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
