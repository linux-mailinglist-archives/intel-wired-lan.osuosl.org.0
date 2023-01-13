Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C30C66947F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 11:41:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 28C8C41193;
	Fri, 13 Jan 2023 10:41:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 28C8C41193
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673606485;
	bh=lSM8nn/yqNDdTtAvOXt7ZaAUDNjx4jPZOVrpUPBC0Lo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xGckFobT+h0OfxgJ+SYucQ5ykkLIldgrkmH8UxXZOoJnKQ4XKgLFmdyQJjt3KbVrW
	 eLfBOCHSHRlJr/au8j9Lga9bWuQE5Ov9QF7P9LZ0bU+Y2W4dGRl4XJblcWWLqBo9A7
	 fsPbeGIxlx6VKFEBRkrnTWCCTG5alqwRqXhZcggXDoaCGyphA8hAomrQPI/OTvsv93
	 ycpsy80chfjwXqPXBe4QxQ62DdZULn0SU6Y1Kk8npCJmWzeTmf1kZsK/sePB4vY+Qz
	 6RVI8ZG0hyGgdSGp0d/VK0d6zpu1XAED91KeSd+peEMkKaKDHlWjE2DWmx3IV5PhQz
	 rvfwmSI8DVyww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k3FZrQXaZAaN; Fri, 13 Jan 2023 10:41:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 07A9841145;
	Fri, 13 Jan 2023 10:41:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 07A9841145
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 427D41BF32C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 10:41:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 26F1441145
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 10:41:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26F1441145
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zSop7SVZX3DT for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 10:41:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4C6E403C8
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C4C6E403C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 10:41:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="326021992"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="326021992"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 02:41:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="688697811"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="688697811"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 13 Jan 2023 02:41:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 02:41:16 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 02:41:15 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 13 Jan 2023 02:41:15 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 13 Jan 2023 02:41:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OiH/1TSGeUrUZPyFLeqAkVjMpD72wvd6j1z9mjw/n3wGeivjJwuXSYuKqnhVc4x/wUzOU1WJn163B1zPCMIqxkZI7lQr8Lwh+Y54JzLrV4X5fdZEnH9Fu33CdlFM9x8fqvnl7MiIFo8GAZnl63zo73RSgiWf8cYjNzf2AoXZQjwT1tXnkk/AleQnz3E1Q8W6Y57wFGY/1JMnsUYGldvIWpA2D8pukYEzpuxZaFLESlIfYKo21rT77uvnrZuVn3CadETz0eLgN/JYPRkKorMH7iuxvRXUi4QFyNFTugAFBdR2IR6RBM1rmHvEzVr3wv7N23rEEZxVQweA2b7VEhcq/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tuQmmHAtfCker1bX4K4sOgFEuUZ1eSN3jiWGs2u0nL0=;
 b=NbmpZlrKddZM8qc3jtASE3jID6hHMnlVn6IkRzQriLY40S52PbCFFGbFVi37KXbcdDZTrmdq9oNFgEYKKCW64eQklVAuoioBXjRA4Y3BSdIDedRDolj3cbXNjyJD5dYCnMQBRrn+7JVJkB1RZmGFxJbL4Q6C9xKgzbX5mjmJriP/f9f/sy0uFIwATtqPyL9lOHMAfyQccaAWV8ZsEQ3JBUqM21k8tdEXv2b6KFnWUhLF5Q2gwUCCYDML10d2u9ucfx/3005LoX1Gnxyv0u18wUPAnoyxlP9ITwsWWbU3J4LrD/fITFkALOCTtIIlZvQibG4HnHQovmoeOWa4M/rO4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6443.namprd11.prod.outlook.com (2603:10b6:208:3a8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Fri, 13 Jan
 2023 10:41:13 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5986.019; Fri, 13 Jan 2023
 10:41:13 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] ice: fix out-of-bounds KASAN
 warning in virtchnl
Thread-Index: AQHZIBhPJABf7QAXfEWHur2cN00Y6K6cNsbg
Date: Fri, 13 Jan 2023 10:41:13 +0000
Message-ID: <BYAPR11MB3367018BC1CE714DE9E5959BFCC29@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230104082517.117649-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20230104082517.117649-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6443:EE_
x-ms-office365-filtering-correlation-id: 8fe6e4e8-a330-4b18-1b11-08daf552b135
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9xhMS8b/5k69ygI+LStHVAfU7ymBstBTCF29GEyxM0R9PCmbxwBM5xb3b9J/nS31akotcBJArRvtHNczZA7IOHa8kOGaPBlaFUMHh34rYX+tSMwFdq0JEG+d4X6VQqcMkseuvxPvbgWclmfqsF/bGLB8WQ+nH8JdFh5eNbmTryQwjA7hoZRUrO6m36+DXmOK4o7pdf5KzVRVN4WEwC+JDHsGcjXMwuBt6hmcZftTC/0M51hxQVuodOXdR6PHNvoNxcq6tWsF5jQb12MlAvzA/a3OuGB7/1P6TmWfzw3aFhD/T6TDwjNNbacH3knIRET8Lro6rDFjCd7GyiLpuf6p25YG8xFqcpI1XQ37ElsNz6YRAbWkXouTKKgtif+RSzsP5S5upHcJrc2x1Ji3zCKXbbPngJb28dY42Pk8D7LmH2dSCyedzjH8dt3HUqPilFLbq6Aac1w0YlVcOWWohJMHUKHr6VkXNQry6yHu3Jn180+SLrEIXNdRKdD1KbMsdAxYmf7XJ0M5B9daVynD3ACUqMEknUjjCAi4xbpSndVELCGNZlclVyi22OLT6F+vtWfPJzE0hjPSZTZFZ420Ha7BPO28BHbQVZNxLylbxcY8envYsoDeknJqO6TsbExqua5pbWhLHiC5BslxwXapU5hW4KRCuM4bYsQWBDfz0U2qDPTr8oeuM/Ykb0tWoYvuWgf3q4bkLBED/e2k4YVxzqRPV0Sk1uc0O8SL5lQE2om9YMDzKWZOQz3nsH//IscLXT18
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(396003)(39860400002)(346002)(136003)(451199015)(82960400001)(38070700005)(478600001)(41300700001)(33656002)(38100700002)(71200400001)(86362001)(316002)(110136005)(66556008)(26005)(66946007)(55016003)(66476007)(186003)(7696005)(76116006)(5660300002)(53546011)(6506007)(2906002)(8676002)(66446008)(9686003)(64756008)(4326008)(52536014)(83380400001)(8936002)(122000001)(156123004)(505234007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hsnhVZJUC7u6eYfJbL3QqeKahJJ90K5K6J84QhicqpR6ufTmDkpjEjQAKmcJ?=
 =?us-ascii?Q?9PsD9ZUKNN/NJbUXkpwq0BigbvNAqa7K0u4vu2yNB2kQ7JqT/A2xXKTEqVot?=
 =?us-ascii?Q?JjT1PY8/fiwiu1LJ0x3v+45TCTBbwtMuZu2ZUUlPy8jlCtMIvllp60PCqiG1?=
 =?us-ascii?Q?Yhjl+SEmOAwv3V1FTR3CExQAvU6SMtprLyGWoVe4OYkUrOb+ESlXJTtXBv8U?=
 =?us-ascii?Q?hlRQzlV1rdk6iakSBLNhgH3Aw3Qii1x5yuTMUt3DGBqB7VKfn1XbCmNAISXF?=
 =?us-ascii?Q?oDF8GFwyAHInLx67Izx+i31YqFKg6cZB1ur+zsRrF4yUJhuNO8aG2/rfaiz/?=
 =?us-ascii?Q?/qH6Zv4iACwff9zc9MceJmInUwALCnJflte1hZd4hBY7a+1XGuVGZz2fnmZ1?=
 =?us-ascii?Q?H9Th4nHsZwWrw5fVZrgaazrcnIH3Bvqc6MAWZ6osVRz9C0nD9xBtfegUObdJ?=
 =?us-ascii?Q?+5bRnmTlRsZzQ0fr674HotlFRyMl1IrC6ymdnJuchGRV52xwTd+tIctJg9bR?=
 =?us-ascii?Q?9BEkqz9Q3gyK34LApVX8Hxdtz9kL6A7Hx4iA7MsPFGLzV8w2g/TmIOM3vEet?=
 =?us-ascii?Q?jWkdrwqUscqrvw5tbho7/nncg1t1w+b1VzbhPIyb4y30aPpxKo5lLyt/iU0x?=
 =?us-ascii?Q?aYLF84ZixevWjouKh42VZjNo3y/ZSb8RsuIWXdlX+BvodWKwfAqqZLQ1Cusk?=
 =?us-ascii?Q?0wCyyj96uq6KBIwTYAGJjkOYiy4Z7+EIXcfQa0KSljXLNDFMT/TJiSs59UZb?=
 =?us-ascii?Q?D0dYSGBm9Aqw+dR4kPyux2gVxLt2PbUnHPIWh9fJgNcwbTVUTfVg4Xum86Hz?=
 =?us-ascii?Q?Xf9EKahX7LE2+QtjJpo97GEe8uQuByhwWl6B5VFXrD0Ih7eIULiv5DKNEXh0?=
 =?us-ascii?Q?O9/3z3qcjhAYQXQI7xlWdC0HCswD6xRm0a7iNPEqsni94N0pLH/HQBz3Azii?=
 =?us-ascii?Q?wLouefXmToqJsUcdvdLTgtA146pl1jhFKCi/JDiF8ct3mm/wM/Ymr30WXWO4?=
 =?us-ascii?Q?6uZkDSLJLN4Z5DdrEms2fe9AGKHax/lUyMxWsfgUVr0Bv9gSgFeKodd+zEN9?=
 =?us-ascii?Q?dLGcZVDw6Qd4P4FHbDu4bpys+c771kx2y3a8s3pHD0Bb3GzjEfAqeEtHNl2p?=
 =?us-ascii?Q?h0euI8mwh3xiXQux8rBJYkz7PLl9qPo9lGX+vbzs+9Tr+ny8KufADTb5tN5e?=
 =?us-ascii?Q?ElOMbGAEePVo2dM8+z98GDhwU6OrtbWv5ds+rRxF0/4wuS8anvUwhPf53OI+?=
 =?us-ascii?Q?g0eTU3zNQzhAA+LBLrRVms3c/QMrvsmz+AIApo+DdnvGfZdI6IANTkVl3BWp?=
 =?us-ascii?Q?r+PpVJh7wouuxE61wb5bwFkb3urznlRN1e0VVTW1Zc6tMG8VHu44JF0KSU1b?=
 =?us-ascii?Q?nu31f+ff5N6id4/DuNTXouap3Belmg+0nZ7A4OOyQU0pWBvp3t8P/KuBvXkL?=
 =?us-ascii?Q?OS3Db78bMS6JrhskE+L3TtUEIJgxC4fhdAXl0v4P/NuTWHxvm5Mh0Gf6Uvvt?=
 =?us-ascii?Q?dEzt/P3qNatgHn+1dBeGQh52Z9xVC1tkerMe6MGLLPW95hbAU9JEu32OSpVW?=
 =?us-ascii?Q?FZ7Ps0b2D5wsg+7y/M8pSUp/fS8ra/Kpiq/o3qsf?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fe6e4e8-a330-4b18-1b11-08daf552b135
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2023 10:41:13.4892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qXn2oAdKx1aLv9jrSMFbYmAAFEyzMw6dDvcmIwwvOvH48QIhcn9FzW3NrM6HeAMKPfut4jppD052+KzpeMdbWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6443
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673606477; x=1705142477;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Cn+P2Sr65ag8HorT9F9lpRhWL0PTQi0nt+wNUwg2TD8=;
 b=jiTCnDGs30vjauQOEHsH+pyvZx6mIQyShlIfKGyjVMzEejMQWK6SuDhE
 mQSiRnLeKajy2/4JmTrRPMjzQ8fo2CmeyB5aAEcPENBxXITPzjsOYmRco
 fEZOe5MxvBcW0M5I2WEgxHz7X7Yevx0pDNHQA2lHAC6AnH8sVeEo31v3E
 x38U+WC0yb+sfh03dF1imVp0ovr1nd/GeIyuX9wdDjUx1OpW1DYqi1+Ve
 DyKdccCmizd8QMC6BXgkaZqucaYeLIDFMJGa7mkBvFQzcdBZNahudAQfx
 HHqPMu97wi9p27VqNiYRf0NqLSnDqudJohhrrlhNLMYaRimXMiWhQpNsC
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jiTCnDGs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: fix out-of-bounds KASAN
 warning in virtchnl
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Wednesday, January 4, 2023 1:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de
> Subject: [Intel-wired-lan] [PATCH net v3] ice: fix out-of-bounds KASAN
> warning in virtchnl
> 
> KASAN reported:
> [ 9793.708867] BUG: KASAN: global-out-of-bounds in
> ice_get_link_speed+0x16/0x30 [ice] [ 9793.709205] Read of size 4 at addr
> ffffffffc1271b1c by task kworker/6:1/402
> 
> [ 9793.709222] CPU: 6 PID: 402 Comm: kworker/6:1 Kdump: loaded Tainted: G
> B      OE      6.1.0+ #3
> [ 9793.709235] Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS
> SE5C620.86B.00.01.0014.070920180847 07/09/2018 [ 9793.709245]
> Workqueue: ice ice_service_task [ice] [ 9793.709575] Call Trace:
> [ 9793.709582]  <TASK>
> [ 9793.709588]  dump_stack_lvl+0x44/0x5c [ 9793.709613]
> print_report+0x17f/0x47b [ 9793.709632]  ? __cpuidle_text_end+0x5/0x5 [
> 9793.709653]  ? ice_get_link_speed+0x16/0x30 [ice] [ 9793.709986]  ?
> ice_get_link_speed+0x16/0x30 [ice] [ 9793.710317]
> kasan_report+0xb7/0x140 [ 9793.710335]  ? ice_get_link_speed+0x16/0x30
> [ice] [ 9793.710673]  ice_get_link_speed+0x16/0x30 [ice] [ 9793.711006]
> ice_vc_notify_vf_link_state+0x14c/0x160 [ice] [ 9793.711351]  ?
> ice_vc_repr_cfg_promiscuous_mode+0x120/0x120 [ice] [ 9793.711698]
> ice_vc_process_vf_msg+0x7a7/0xc00 [ice] [ 9793.712074]
> __ice_clean_ctrlq+0x98f/0xd20 [ice] [ 9793.712534]  ?
> ice_bridge_setlink+0x410/0x410 [ice] [ 9793.712979]  ?
> __request_module+0x320/0x520 [ 9793.713014]  ?
> ice_process_vflr_event+0x27/0x130 [ice] [ 9793.713489]
> ice_service_task+0x11cf/0x1950 [ice] [ 9793.713948]  ?
> io_schedule_timeout+0xb0/0xb0 [ 9793.713972]
> process_one_work+0x3d0/0x6a0 [ 9793.714003]  worker_thread+0x8a/0x610
> [ 9793.714031]  ? process_one_work+0x6a0/0x6a0 [ 9793.714049]
> kthread+0x164/0x1a0 [ 9793.714071]  ?
> kthread_complete_and_exit+0x20/0x20
> [ 9793.714100]  ret_from_fork+0x1f/0x30
> [ 9793.714137]  </TASK>
> 
> [ 9793.714151] The buggy address belongs to the variable:
> [ 9793.714158]  ice_aq_to_link_speed+0x3c/0xffffffffffff3520 [ice]
> 
> [ 9793.714632] Memory state around the buggy address:
> [ 9793.714642]  ffffffffc1271a00: f9 f9 f9 f9 00 00 05 f9 f9 f9 f9 f9 00 00 02 f9 [
> 9793.714656]  ffffffffc1271a80: f9 f9 f9 f9 00 00 04 f9 f9 f9 f9 f9 00 00 00 00 [
> 9793.714670] >ffffffffc1271b00: 00 00 00 04 f9 f9 f9 f9 04 f9 f9 f9 f9 f9 f9 f9
> [ 9793.714680]                             ^
> [ 9793.714690]  ffffffffc1271b80: 00 00 00 00 00 04 f9 f9 f9 f9 f9 f9 00 00 00 00 [
> 9793.714704]  ffffffffc1271c00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> 
> The ICE_AQ_LINK_SPEED_UNKNOWN define is BIT(15). The value is bigger
> than both legacy and normal link speed tables. Add one element (0 -
> unknown) to both tables. There is no need to explicitly set table size, leave it
> empty.
> 
> Fixes: 1d0e28a9be1f ("ice: Remove and replace ice speed defines with
> ethtool.h versions")
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
> v2 --> v3:
>  * remove double "---"
>  * remove {}s in ice_conv_link_speed_to_virtchnl()
> v1 --> v2:
>  * follow Alex sugestions and remove all zero records from link speed
>    tables and add validation for the index
>  * fix commit message
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c |  9 ++++-----
> drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 21 ++++++++-------------
>  2 files changed, 12 insertions(+), 18 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
