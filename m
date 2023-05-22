Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 588B070CA6A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 May 2023 22:09:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2FF341B41;
	Mon, 22 May 2023 20:09:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2FF341B41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684786144;
	bh=cXCafb3eG9f5ACzNrtqXMun52CoyDU49xxaSSKmioac=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LxmVzZpJjGc1LIsSC5TvWxjY+mqYh7j9fIp+MGMIs07+DBFmpOmwkLlqrsGIT/huK
	 0/A8vxZh0IXrGugtoJb3s2RkFCt17b2hhFZVNp8mnEfDEuuTpeA0Roghlg/qt5+wjd
	 qZCoBHU44lV+vc22WgRlM1++1aLWp1R03srVN6A22D6aBt8pCueqXs9DQVGGnkUHTH
	 Vlbxn5EsbbApzcT35T+/d6VpsvZso7FYXo+98Q0jkYGj1s0lZTT22BRlJalF7/7oKt
	 bgzJP3vzGSrsYvZPG/IqgqPtLk2bQKQnSUpSSTiDUHbMsRBX0YcpfNL7LXNZL4JSYI
	 S/63isJUm88OA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vpWjNyMU8vu3; Mon, 22 May 2023 20:09:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C55AC4185A;
	Mon, 22 May 2023 20:09:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C55AC4185A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84C931BF38D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 20:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E1D7817A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 20:08:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E1D7817A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VnWcVQs0hT_9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 May 2023 20:08:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1144F81770
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1144F81770
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 May 2023 20:08:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="381269114"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="381269114"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 13:08:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="773495794"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="773495794"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 22 May 2023 13:08:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 22 May 2023 13:08:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 22 May 2023 13:08:50 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 22 May 2023 13:08:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KkDiNkjwCU/iIjzdbsqg1Hbzl8ILYxd/eDPBdYN4MAOKhG7c2uZEBjPwzdMp1VmSb71diUpUq2fOP7SwfXulvS2csI2EZErukW9yvVBJe1qCpP2L4H7kl+PTLBPnaitI3MkifqnGqcNetzrpau/GuFRl5U6gsJmG2rl/dVkeeM5j3/1ILjP+gjnSmvpPva0EHqNDDpacAvW5yGGJpOgmb3B4Ak6EHZdCMHub2pv3ZDCmAeaanYJ+EgIhCCr6cZwfTPtiiIO7lUxc9ENNH/YdK6iFplNnZ1dultASzlb7ZAZ92WjSwB70/TkAYjFJMMFD5hVKMYztn1jRWjBeKCaHBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9C0MTVJW9nZXef6DIOKaZgKGpuBQBX0rTWI8USp5ib0=;
 b=M9bpeLAOWsYos3GR35NJVXZvKbgpUiiu+rhAGIaTuQlWyqyU4XrSXYArOvL0PgjtX9djDAToqYylmtQvISRHfKOg8I+x/eGoYqloflx1BKkttFvlXEPngZB/8xsLjViaab6YK62YiUllC9smnT/iatmBqo6Fc1/3YfxWjv+gE3CLGR0f+6NWCUPyQ3SOknNdBbucXiKBvjMjZrTos6+TuSMuoJHndcungkYkET5dcmmhC/356uYakA7IU1Pa47Wkrs2cThAeAJ7AjCOT2jiyinRjONcp/Z6D08WYKGytrEryoP/oNmVr+QWr9CN/l/EIfEL6Jw+B5P9kbuhCWg4yJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4993.namprd11.prod.outlook.com (2603:10b6:303:6c::23)
 by MW3PR11MB4697.namprd11.prod.outlook.com (2603:10b6:303:2c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Mon, 22 May
 2023 20:08:48 +0000
Received: from CO1PR11MB4993.namprd11.prod.outlook.com
 ([fe80::4f45:be80:c71d:4ec]) by CO1PR11MB4993.namprd11.prod.outlook.com
 ([fe80::4f45:be80:c71d:4ec%7]) with mapi id 15.20.6411.028; Mon, 22 May 2023
 20:08:47 +0000
From: "Singhai, Anjali" <anjali.singhai@intel.com>
To: "Michael S. Tsirkin" <mst@redhat.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>
Thread-Topic: [PATCH iwl-next v4 00/15] Introduce Intel IDPF driver
Thread-Index: AQHZieAs4WE7GXSrt0+ElFbx67pbS69hF7oAgADFRgCAApp2AIACRoDg
Date: Mon, 22 May 2023 20:08:47 +0000
Message-ID: <CO1PR11MB4993CB559E5BA413B66FF09493439@CO1PR11MB4993.namprd11.prod.outlook.com>
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
 <20230512023234-mutt-send-email-mst@kernel.org>
 <6a900cd7-470a-3611-c88a-9f901c56c97f@intel.com>
 <20230518130452-mutt-send-email-mst@kernel.org>
 <dba3d773-0834-10fe-01a1-511b4dd263e5@intel.com>
 <20230519013710-mutt-send-email-mst@kernel.org>
 <bb44cf67-3b8c-7cc2-b48e-438cc9af5fdb@intel.com>
 <20230521051826-mutt-send-email-mst@kernel.org>
In-Reply-To: <20230521051826-mutt-send-email-mst@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4993:EE_|MW3PR11MB4697:EE_
x-ms-office365-filtering-correlation-id: deeffd0b-88b9-48d5-8e25-08db5b005a79
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J/03Ueprb+R93em2K8epO93NLjrzcAXFUgPpSvzZYEUOmAIWAiQQEC4z6O8IXhwMCq4oV2dZOw2DjbeKBqUczXByCmSuat00wMuRgC6wIwCqLkC2jMUqU6UHRg9h14SyhuxvvB5qTR1ocdfdrQ8f94O4+zvK/cOFGuB6phgIJ3cOVMs4Qeq+xoelt+F5wkAIWtaJtXrzJp+4D1QNJhrVTAstM6mvIbSWDivN9pDi5mnh8usYTBlY0rRlRz239J10k06cEGYYBYhr13lGB3LuHdihixjKqKbdqgF/7KpwZlpiFPZVQUo1H9PfwYvVCQdCnKZRaag8Chs1QVOR0/GWEWYSOfimjBTa1ba2iIiH8+uTrXyTMUpA/vvLlQLYZE3wwKPoglIgg7cN0Z6tZgp+Yb4W51PDO8q4PFHhAD1qTDwp5u4cclifnjEL4RR7mGv3Wo2KJJ0v5qZIz0rl/tyY5gV4/x1eO/6Ujb9nLKVtcvyOcHaBXaRrpW5VG13l/gKQvj3cQAnxcyeRl+vO7F64waqFrKqOj6D+BgTafXrjDaRzYMjW2p9gmNudHYr3kE0SDUzoC6d9WOiyzsteGUjzSLyjX6JLf2W9pcY06T+s4e+v840Ud/4dEdoDCHiWHKWvP66Xpb804xvQCwDlJPUhGg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4993.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(376002)(136003)(39860400002)(396003)(451199021)(8936002)(8676002)(52536014)(5660300002)(7416002)(83380400001)(186003)(6506007)(9686003)(53546011)(86362001)(107886003)(26005)(122000001)(38100700002)(82960400001)(71200400001)(38070700005)(41300700001)(7696005)(64756008)(33656002)(55016003)(966005)(66446008)(66476007)(66946007)(66556008)(76116006)(316002)(6636002)(4326008)(478600001)(110136005)(54906003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?U6D+oMuHQmS1sJzIdkdJyOOiKwFRltj9Y8HDMzYqtgmzZK019+bgIBUDBpwq?=
 =?us-ascii?Q?dK3UH0S2QVNui7jlE5TKb5tEckbBa9yFG8613oMCikffe9jYreiVcpAsejR+?=
 =?us-ascii?Q?F5zOlmagUN7QLV2QS3odHB2WH6Sc34b4kR515lkXAayTLKG2PFDCYbjKnwVR?=
 =?us-ascii?Q?ph+QQxhQdCPZpNQqAskA8QhhDXYkHwibC8Y7ScrREHG5NVI/8VUAxBFAAn/0?=
 =?us-ascii?Q?M9kwunQvl9AXr6cR073asGuAPPj3f3qV+FwHPi7x3P19aeQsQ+17gruCW+CW?=
 =?us-ascii?Q?KlH3g1RKJJwcWxZ7a40PVDIfJJli8n1+f1Hg6OL3TRrSlTCbFmL17TAcHs8N?=
 =?us-ascii?Q?EcscDGXH59dEDloqi3CJez6+pcYLdnmrCmIOWuWPO4pd1MlPSi2XOAm1LKVF?=
 =?us-ascii?Q?We/nTAmWqPgDAoAlK9Kf9j5k4Ba6f7Pq8/0J/utlHVfPSITqOpEguUQMD5Rd?=
 =?us-ascii?Q?DAqXGPdb5evQnf3mNwJ8zdXrv0790ix4z6DwP5b23Fns6w+zKae7RrYPmZwP?=
 =?us-ascii?Q?2kxkXiJ8UwhP8Z9WrPGtEdIEXJoWj5qITfo5OJ2mMwWuGtRh/ts5bWSnF2cX?=
 =?us-ascii?Q?/DtgNdgNb1lQLbTrHN9CF9NvjPbLNSC5I3n2klYQBgKv20u/2xMrImyMss9u?=
 =?us-ascii?Q?cSQ6Q2RZH8c34LwbNJr4bL/M/zMQJMpSVLsdWITzBjwRjWAjzDhRKzpb6g02?=
 =?us-ascii?Q?k1ahSZ9GoBJM1/AJFCq1t071ixQtpdUF1Syoc5t8rPLVe6bJP7RjPeEOQ/uy?=
 =?us-ascii?Q?gwzmPSgar/r8sXFSscJi2NGnAfdu3VGlTKbweLTgrb8rCpPYJ4gs/AqEmvyK?=
 =?us-ascii?Q?sUMsm14OQONZ+4HL5ZJR9FbFYvypLKjNiSxZwegSP+uNnqLfYgzsWsKe+L3l?=
 =?us-ascii?Q?HXSTY6xF+wfp11lNG3X7IkWq0ULXC0UJl8W+cBCw6ITCcV92iR5+Pg+909z0?=
 =?us-ascii?Q?mqJsf39T2fW5a8dUZowQ+T7oVieSXJTE/RqnlmJ0p6ZKg/U8xXNZgHBQ5fYu?=
 =?us-ascii?Q?nHRcAPf3x+lwcIPDa9Si8ZwkyDNM8HvPupPksy2Ytx2DxS1NxFp8iR+bgob7?=
 =?us-ascii?Q?GhWeASq9E7nU+tbQd41V8pEfvZCk8K5BjiC7ifSuaOxLmIH0Hav3/VqG/aZi?=
 =?us-ascii?Q?xjuoV8pzKRtIE4ysYjuQlYljXuocV5RR99wke3db8fpG/4gA2t1I4N4Hea/W?=
 =?us-ascii?Q?ipl2oayXtfo5aXe0/qufVwPuShMp4YjuDKbg0m4g30n7JYFMxBOjJJLbzFAk?=
 =?us-ascii?Q?yDRuG9fBMefUHQYKrmGf7QMEmRrurhIzyMGr5rAtjw1jDz5gGNAQv66cnOIM?=
 =?us-ascii?Q?UN7f16q5Xq6O7a+ziXvKO3eda5mKml34aEJGg1c/DLOchz6NctOvKIFf9RTV?=
 =?us-ascii?Q?48+kJytcBmceXFmAIBrOomwLuvKriNLJ6tjjoCtd+5ODn/fScJHsBuq5excI?=
 =?us-ascii?Q?42YOqLctUQ6U64O0uXaw/InYw0IyQVmedk/rwSjiWk+DcT6vNI0L7wqWKQHw?=
 =?us-ascii?Q?OuPpGPL71vkBS48fZdplNBwiTYzE7962lSe/KYIvCygzoiT1kEr3BgCtIf5M?=
 =?us-ascii?Q?fnkBhewHPR9XjSpqygYNZK19BkM5b/YsNK+1gl17?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4993.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: deeffd0b-88b9-48d5-8e25-08db5b005a79
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2023 20:08:47.8487 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ghth0CCkvC+1pBopxy/FPvuJ7sT87YOTqUEAHhg8uL7JtLeeEJ+HrjzJoblMoF9mLKLQuQDnGof30Nf3LHM6FhTPY2rbVkZoICrt+VXi388=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684786136; x=1716322136;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9zLQExdzlwIqhjUkk5R7A8mnb7vUZWPiw0QZ4Qy8He4=;
 b=lcUpEyDUeQ3P5UjS+i54zOucRXY5+97yHRgVjb750svDzXV7trqzSc83
 L8OIS7v7VmooPaJinKychJJ3zdU2xknc/3yxoKj8qARzm1oI+ytNMi2yo
 G0w+Jajd3Pj49z1r4EDMi/PdDrfSsuYnRNgtVh5FqxOjhKSZ+RugkPYQ/
 comBSTZ5g5bbl631ts71tJRINA9BoPdoYJiLd1MDuHYJXBIhk1IpKqruU
 IiynyQWC2+ffshshVOveIV2sbXIaVBezRIATNGHTgtew4v7WI+jLgdaCC
 Lm/D6SibJvZtEA4wiPITSCk+lCjIrahvlknfr/92Adjh5E5pa619jtxWz
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lcUpEyDU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/15] Introduce Intel
 IDPF driver
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
 "pabeni@redhat.com" <pabeni@redhat.com>, "leon@kernel.org" <leon@kernel.org>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Orr,
 Michael" <michael.orr@intel.com>, "decot@google.com" <decot@google.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "shannon.nelson@amd.com" <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I agree on Help message change as it is not accurate now and I like MST's suggestion. 

Anjali

-----Original Message-----
From: Michael S. Tsirkin <mst@redhat.com> 
Sent: Sunday, May 21, 2023 2:21 AM
To: Samudrala, Sridhar <sridhar.samudrala@intel.com>
Cc: Tantilov, Emil S <emil.s.tantilov@intel.com>; intel-wired-lan@lists.osuosl.org; shannon.nelson@amd.com; simon.horman@corigine.com; leon@kernel.org; decot@google.com; willemb@google.com; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net; edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; netdev@vger.kernel.org; Singhai, Anjali <anjali.singhai@intel.com>; Orr, Michael <michael.orr@intel.com>
Subject: Re: [PATCH iwl-next v4 00/15] Introduce Intel IDPF driver

On Fri, May 19, 2023 at 10:36:00AM -0700, Samudrala, Sridhar wrote:
> 
> 
> On 5/18/2023 10:49 PM, Michael S. Tsirkin wrote:
> > On Thu, May 18, 2023 at 04:26:24PM -0700, Samudrala, Sridhar wrote:
> > > 
> > > 
> > > On 5/18/2023 10:10 AM, Michael S. Tsirkin wrote:
> > > > On Thu, May 18, 2023 at 09:19:31AM -0700, Samudrala, Sridhar wrote:
> > > > > 
> > > > > 
> > > > > On 5/11/2023 11:34 PM, Michael S. Tsirkin wrote:
> > > > > > On Mon, May 08, 2023 at 12:43:11PM -0700, Emil Tantilov wrote:
> > > > > > > This patch series introduces the Intel Infrastructure Data 
> > > > > > > Path Function
> > > > > > > (IDPF) driver. It is used for both physical and virtual 
> > > > > > > functions. Except for some of the device operations the 
> > > > > > > rest of the functionality is the same for both PF and VF. 
> > > > > > > IDPF uses virtchnl version2 opcodes and structures defined 
> > > > > > > in the virtchnl2 header file which helps the driver to 
> > > > > > > learn the capabilities and register offsets from the device Control Plane (CP) instead of assuming the default values.
> > > > > > 
> > > > > > So, is this for merge in the next cycle?  Should this be an RFC rather?
> > > > > > It seems unlikely that the IDPF specification will be 
> > > > > > finalized by that time - how are you going to handle any specification changes?
> > > > > 
> > > > > Yes. we would like this driver to be merged in the next cycle(6.5).
> > > > > Based on the community feedback on v1 version of the driver, 
> > > > > we removed all references to OASIS standard and at this time 
> > > > > this is an intel vendor driver.
> > > > > 
> > > > > Links to v1 and v2 discussion threads 
> > > > > https://lore.kernel.org/netdev/20230329140404.1647925-1-pavan.
> > > > > kumar.linga@intel.com/ 
> > > > > https://lore.kernel.org/netdev/20230411011354.2619359-1-pavan.
> > > > > kumar.linga@intel.com/
> > > > > 
> > > > > The v1->v2 change log reflects this update.
> > > > > v1 --> v2: link [1]
> > > > >    * removed the OASIS reference in the commit message to make it clear
> > > > >      that this is an Intel vendor specific driver
> > > > 
> > > > Yes this makes sense.
> > > > 
> > > > 
> > > > > Any IDPF specification updates would be handled as part of the 
> > > > > changes that would be required to make this a common standards driver.
> > > > 
> > > > 
> > > > So my question is, would it make sense to update Kconfig and 
> > > > module name to be "ipu" or if you prefer "intel-idpf" to make it 
> > > > clear this is currently an Intel vendor specific driver?  And 
> > > > then when you make it a common standards driver rename it to 
> > > > idpf?  The point being to help make sure users are not confused 
> > > > about whether they got a driver with or without IDPF updates. 
> > > > It's not critical I guess but seems like a good idea. WDYT?
> > > 
> > > It would be more disruptive to change the name of the driver. We 
> > > can update the pci device table, module description and possibly 
> > > driver version when we are ready to make this a standard driver.
> > > So we would prefer not changing the driver name.
> > 
> > Kconfig entry and description too?
> > 
> 
> The current Kconfig entry has Intel references.
> 
> +config IDPF
> +	tristate "Intel(R) Infrastructure Data Path Function Support"
> +	depends on PCI_MSI
> +	select DIMLIB
> +	help
> +	  This driver supports Intel(R) Infrastructure Processing Unit (IPU)
> +	  devices.
> 
> It can be updated with Intel references removed when the spec becomes 
> standard and meets the community requirements.

Right, name says IDPF support help says IPU support.
Also config does not match name.

Do you want:


config INTEL_IDPF
	tristate "Intel(R) Infrastructure Data Path Function Support"

and should help say

	  This driver supports Intel(R) Infrastructure Data Path Function
	  devices.
?

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
