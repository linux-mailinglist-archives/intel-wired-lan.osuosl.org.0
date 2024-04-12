Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9258A26B7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 08:37:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 887EC41F45;
	Fri, 12 Apr 2024 06:37:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rp4I5lV4PjhY; Fri, 12 Apr 2024 06:37:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A287541F3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712903843;
	bh=5GrSfE/QCx92M4BEkeqsfC6pMSMD85hi8dcxZen4hvg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1A+OIctMDAPTffVW38tiNzX/xUYpGBGgA2fnf6Q+fHV0u23YH1Grj0owSLNa1m/lN
	 TadxOQQS5QD0/SmRzGTNHGZx3b6moPYsz21aMXkL/r9c6ZX6ugnm5YLWIvE1tDlM5A
	 84kxeGe8fVpfxzqIco+bKNA4ZJOLncoAggQQEt8bu4XASufmwLarTuwOLaMbxjecZa
	 agDaF3qOlQoIb+eof7vnxzkTufx85oGzE1dW/DDoywb24TrpRiiHdKfHeTdA7p8cDd
	 SoAgZdmHIGA8QVqZ6Yh1yEzSdITCgWHRS+zJEbOcfzwEMP3AnmJ7M2F+0O1wqcsaLU
	 hIavv0ORbiDTA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A287541F3E;
	Fri, 12 Apr 2024 06:37:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA0F11BF312
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:37:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A20CE60E76
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:37:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vh73QAGrXYzx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 06:37:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C26DA60B0F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C26DA60B0F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C26DA60B0F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 06:37:19 +0000 (UTC)
X-CSE-ConnectionGUID: LPqqa47OR9m73EVRvZpgkw==
X-CSE-MsgGUID: xzCdDg+4QTW6Vw9ONCyxdA==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="12133429"
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="12133429"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 23:37:19 -0700
X-CSE-ConnectionGUID: ppRPvbksT8Ow+oHO4zjNkg==
X-CSE-MsgGUID: QUCUgX9ZRCiClfUfIi0TPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,195,1708416000"; d="scan'208";a="52109441"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 23:37:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 23:37:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 23:37:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 23:37:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 23:37:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZJUQy6fs/ljOlS3Xvalr0UYpEy8sm3l/hIbR3d7nOyO++Xm4hbycDDr3lMXXMRphhuG5WV/txuwkueXe0LoIX7PKlD12vubkhkeLWGBzi9wt4VokdRMgg0xyof8hg2idPs6AxByQhsnhAO2fHieGE3eCWalVpEapPsv0b8ddjzvfGOvWkvnjhviJK0qH36YLEjXhFHHT5Ei1lWaMXWNgIF0mD6lDRRzjvSW7gBWyonLKZE55Ami6BXKS7uer9MliTISz0xn9PZGcyrI2pFFSJf4dCBTKlQeiOA5FUV+h63GjbBVyPX+amn0I/bXQd3JEkWqSUo0ieX7Ls7tRbG6aeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5GrSfE/QCx92M4BEkeqsfC6pMSMD85hi8dcxZen4hvg=;
 b=B4c/CqIPA3VS5Owh5RsV+c4nnn53SpRFcJ9lPPH4lxRBvMyOmefNIQu54UCM18a4pShK3tAn00XBxucgU65X9VZDsnVo8qVTGAQA1QzGT6YkmExOX1ucsu6Ei7Kdhp5GN5wD0yFEJMJcnlC6a+INNNuuC5cN88QKTtwXDYMbiffDk2wQo6Noa2WDH+osujWkM6Vk8pCInGPW6X0dms/P4YcGh8u9Kzmw8D3pmBbeej16vFrs6xJtHPmC8Tkh6WD3k5GVXrda77RNcSmueU6QqgObqSbsmVUErex+t9J6u74ciYdID7IGUSx8/AvTpAzuPrTjazNMIobyKKMCVYuXOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by CY8PR11MB7800.namprd11.prod.outlook.com (2603:10b6:930:72::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Fri, 12 Apr
 2024 06:37:10 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2%6]) with mapi id 15.20.7452.019; Fri, 12 Apr 2024
 06:37:10 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-net v1 1/2] ice: tc: check src_vsi in
 case of traffic from VF
Thread-Index: AQHadsiYF6uZ8lyCW0yP57QQ4jmKx7FkWg4g
Date: Fri, 12 Apr 2024 06:37:10 +0000
Message-ID: <PH0PR11MB50131F87899015F592BDEDDF96042@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240315110821.511321-1-michal.swiatkowski@linux.intel.com>
 <20240315110821.511321-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240315110821.511321-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|CY8PR11MB7800:EE_
x-ms-office365-filtering-correlation-id: fd1f07e4-73a8-48fb-167a-08dc5abafb59
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W/CtPBFzIPyJMTZUR08RueRGtan6aQWsZbNrwgun3VUhUBxDeOGcZOVBYyXz9f3orZ1y9k5uf5T7Mnb7MOr4hvTV0APMH9RwpHmaeo4Op2eT3QMpfhS5ms1pNnHWwWqRwoFhzmPfHqQ7RsCzaVQB7clmqHwOTBzgUULhkF/kELLfCCWQQ3PfHb1ix94Y1Rr4grn2VZHpAuP3Tmx6vFTK9ru/AzT1Yyk0GokJs+I5ZOH3yxctTxvoItzFW5ZcTJoe/wfz13xdMIjaL4jhxxHWEuxF413R/yVW/TWAiKcesYMVjasmqvEcaaHbbqrqoRlf8z6ud3Rxe9//nUaugilJFZbN+sj59xCSL240rmaX5zr+6OYlDO9l5GufuuSrehr+V/ncBkT9buv57fZayAt8iG/ZL38tfZLYAGTTEjOjiw/i2X14NhQY/AZPZHcMZDIwG6FK8M+PEu9KjOxNwyQpUQ/8kB0t/HZ8jQP38FKl01yZAM2L49YnISSHguGDApwTotqfuA3nfIf+vvUkjHi8cRARdLdI84PP95aq0svYzfVtcrsfyUB1zC/UYawQKRP7lP932lfFy+5+zFm8OhruxuspLPr1J9wbMWs/5AsZ5me/i/7M24jpbK3yicuuUasUyC1IahPDMLkAv5andn68zm3VBr/zleVcQXl8BAQ7eMxbRIvDGH8vi5S/N2WbeG/oJ0a5UGk2J2/fcPyd3Mgld66lkhkWvyOW+ZBejw1fhMc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xUEVmDGgMJSjWeEanvFcrnnSNjljrYvWTr/JpeMG6c/u/WhyWQqT3HSLnvIN?=
 =?us-ascii?Q?3gAQHlDBXK5ttcGZyr0xab6RCh3Y7O+L0Iiqjdg3iT3+R08WLyN2smIzSfZc?=
 =?us-ascii?Q?aiAYzrKQOQh/ULQN6C7mhWbODWFtjePDr9LvHGyr9EV6a9JH0guZooOlGhCH?=
 =?us-ascii?Q?5+2mKc8HgI3z5jb8ErX7RbcSWPDdzfXZl0ccimwFwx5bTpM/fLT2Mdn6GK1z?=
 =?us-ascii?Q?vrL8v5TkiBqRfmSgjqCoChQpBPizEJ5bx/dWysUGcSAmpCiBG1NmQsP+10eC?=
 =?us-ascii?Q?8mhITnP8BCVxpcFtxJoeV6jj9WPluQShAdxKy7RE6gnbPpM09jOcWvT1uQP/?=
 =?us-ascii?Q?U+RTi+u3YCQRIDv/8+2Ngo9o8c3MZLoEG6r9T4zpFa8huTv1MqwkagwnIPmP?=
 =?us-ascii?Q?Q3D3hbY+Azd9tqRae7Xka8Jy+DWqb73Qj13tkbzZJmnwypvqOQBhE+jNm6Bx?=
 =?us-ascii?Q?x4EqDc/R4CveGY6Mw7mDK65bSZqBBqbL9A0nrfOcXXiznpM40HdRmQjaC16u?=
 =?us-ascii?Q?zuDhsNzlgzfpbH5RU0Os/x+jFGQWw0GMyRH7L9Le1egkRU3ih8c6xzW8t2Ld?=
 =?us-ascii?Q?PJMhGYFh8d16j/u2pwjkBEFi7Sd2ZbSinxxYP1RP6a4dkcDDEHleybXB00Fl?=
 =?us-ascii?Q?h/VUyBffnGLMuNOdf4kVXw8eDG3ozHD2yxtbyeaMz6DQvUtFl43d6VEmImkJ?=
 =?us-ascii?Q?qwDZOZFYMgT90xWMnlppx9yayW+qd3ICBzEIdipJp3/ykdB67VBif93yeHAc?=
 =?us-ascii?Q?D41HZvBzAqEBWSy+t20qD711xEfI24iIWnQd54A+sN0Ta+jF8HD2iOWVYQZW?=
 =?us-ascii?Q?59yIMwJsdHZbiXkM3jaDhUttYzI9KuiHXpcu53+HQxw0CaXG6Xi3Tk4wLwF9?=
 =?us-ascii?Q?Ss/3M55oyGJfOa/PiNtVY8Txe/f0ptSetf29x24r4/uMCTUwvwxlsvPpwxVk?=
 =?us-ascii?Q?58agSOcJlLPXWHd7U1qKTqpQWEUJXhwoeqdffteqyF3NcDF7sF1Hldv+PnBH?=
 =?us-ascii?Q?Wev8/F8Z1KGyUR96m5GqIHLY1p46a1salEfotR45JxeQHrtGoz1nVsYXGTvs?=
 =?us-ascii?Q?5k94T5/gNxa+RvZdMBHfWwZkHLdfFKnq3Eb0sdlBQRAjqPrGD6X+mHIbNFna?=
 =?us-ascii?Q?tLd8+omc9b0abdZDbwG0pvQoetgCOfSRN6XzAcNuP7isQmPJ4ahKshASfAMq?=
 =?us-ascii?Q?gMYKJaby5CyPWRHzWvOWgNsoUMu0+QVRTlQzvrkBONZkYCsat0w7C+Vq8ZGg?=
 =?us-ascii?Q?/Meo3IJceD1Vg/pWD7VLTJgAlYl32VJZNVdA2sqZ6Bj9iDIMifoXRcVdjIiQ?=
 =?us-ascii?Q?V5OEVimPGDejp45Jf6KeiWbk6MaU70M/HmlpTWULGSBzra+NOkTPzNu/0CkF?=
 =?us-ascii?Q?uqb7wQev6+Bg8Nz6MhGCT4yHheM7OuGO3qkFYCt9HajyekwV0KOahGe0FBnr?=
 =?us-ascii?Q?64pRvtMc8UlzCjdXSsp4WSmKbjd/KWM8XJ1OmKDbFWpZlFldpqaTGIrRPzRz?=
 =?us-ascii?Q?2dZzDoQKPZP5mmYsxF5zqTdz9F6N+W2D/9MeksbbvSGkQzstU2oL72k0o9PV?=
 =?us-ascii?Q?71cHJbllz3ClyBz4IuHTjqS8KUnz2Afv9FpqJAgzxDlGvjIZc15adTSCfOjO?=
 =?us-ascii?Q?Xw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd1f07e4-73a8-48fb-167a-08dc5abafb59
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2024 06:37:10.6814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TVn0ulbfaiFpnKGfbdDzgkD7tMvIus1qkq9XmyEj9rrC0VP76YF8PIvjnSOArZVsrZyK+uiyZg23Ol2yVHrtVtaW9QpDRKU550q/HBne/KE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7800
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712903840; x=1744439840;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=apN3bpXBtMDSNznKIOiBPDMDbfzRP3jaMEi1mwIFrlc=;
 b=iGLKZStttMNY9aDe50GZLEylWwMXh1RL4O7mlU7MQBON2r07rebKDnUy
 0AJYEzmLxWO8yVdxDM8dxDQ9u01di1WYs2gt3Yl7u80LaeofBgz6kL3Lf
 O/GQLkePQ6JSYe7TJU+5Jc2OmsBduEKbJTXet3S0xWiXBRqZdAkKrm3lA
 Z5ecEdqk8DLixDEpwe6Ia8s3PjBu5Q8bF2YJEcqu3MXC2X8OLXJ32YS7P
 S7ujBqMKqUjDiGFenmA8MGX4CUWUWpSv7yEXAZ4JG5tXyRF7YebBSLReI
 CMSgW4eDonSiZSRkZiaPZrTkgxCwfNJl5i1kyRADtUQR/pO5ojmGdCn63
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iGLKZStt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net v1 1/2] ice: tc: check src_vsi in
 case of traffic from VF
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
Cc: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Friday, March 15, 2024 4:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Samudrala, Sridhar <sridhar.samudrala@intel.com>;
> netdev@vger.kernel.org; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [iwl-net v1 1/2] ice: tc: check src_vsi in cas=
e of traffic
> from VF
>=20
> In case of traffic going from the VF (so ingress for port representor) so=
urce
> VSI should be consider during packet classification. It is needed for har=
dware
> to not match packets from different ports with filters added on other por=
t.
>=20
> It is only for "from VF" traffic, because other traffic direction doesn't=
 have
> source VSI.
>=20
> Set correct ::src_vsi in rule_info to pass it to the hardware filter.
>=20
> For example this rule should drop only ipv4 packets from eth10, not from =
the
> others VF PRs. It is needed to check source VSI in this case.
> $tc filter add dev eth10 ingress protocol ip flower skip_sw action drop
>=20
> Fixes: 0d08a441fb1a ("ice: ndo_setup_tc implementation for PF")
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
