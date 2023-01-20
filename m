Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5DA6756E9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jan 2023 15:20:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4655341CE8;
	Fri, 20 Jan 2023 14:20:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4655341CE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674224435;
	bh=If2BPinz0AvBt4gpkKBxO7z5lrLk4ycEtrYIc4eIls4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=x3XNQ88XkIX0XsUr512wb5JZggal2/+5UotKiGw2ObE8IWqoCOlCaCYRBPw0NW7tS
	 9N+WBRhOU0XUtwRvpntCQLUg0jVW26OxhiRl0BC/VMDWWyI69myJyj08RscYGhMh0r
	 VmjvGR/TOQfCn6VSEgYG48g3DFa8d+Zidlq6NMaq7Eqi8mjqd7wH7AaUybO0mqBoAL
	 a5xIzrXrbIueI9BctpSw/ljh+9nI2TgvShukl/EuGvbYb25i7VrYbg0yqOpiTFLFny
	 uJgAeh4BeaedsE3+l1MRiVN4P8NOacsH/oz/+iH41QV4SgRPH72niiEFs/q6NVbg+u
	 FeCtObEqfQS7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qcO-4e3gSmeU; Fri, 20 Jan 2023 14:20:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DAE0E41CE0;
	Fri, 20 Jan 2023 14:20:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DAE0E41CE0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B62D81BF328
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 14:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8FACB61202
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 14:20:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FACB61202
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2g8SvGIVQ6V1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 14:20:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 379F360FE2
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 379F360FE2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 14:20:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="326863835"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="326863835"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 06:18:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="653802425"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="653802425"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 20 Jan 2023 06:18:52 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 06:18:52 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 06:18:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 06:18:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f9eanHmzRu9G3rNA8KEmiAIWrhOSxQRaCJyfIss5yA7iOXTqDxzwkDWX5M/idE9oKJjspoeCuUTsOCohN9xufnGvOB3QBrGR3pp5EzEbsAfsfupLzyjJFkoBXKV31GPLF1NouR+rCsXNU08z/x9+mfATaD7v7+WsOSpy0u8ymIIHH7mi4suuutbhOgvfGo7V3mHUQoyy8Qv0JT6JzmLuH8kace3XwhRDsDHGOgQea7egQVzXtWJBCpCw9D+/wY0V2tM0lQCb0SFaoDoWNxrxAoPv5O/Yh5rfI4m/ddDNFCuh85Y1qd5yfAH1bYSViBZqMSWlO7G9AxKxWw+4x+lpiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+lOadcAwbyRU2ynJw3/Y3oglnBMpnums+Cp/3s1VFhk=;
 b=Y76IjFgBufmXI/qnf0YWsiQu3/kGUnJLDqCR8cRbJfWwroyZAF8SCSgulhDqSXMv3tJpJc1XEphvitkO4+YF+z6bXxUHGKnLMV0DRL3CgEUPbKSysMl9lIjf76F09CZi43gYaKpETUDD2271prA1HFfFYZPxf30BLWn7v6zgmAM3xPyzOJ+VyPDP15XSPb4CJ07UjHBgOORWRDt/Rfo9XFx/yTKhbXmnrBbcnne0JIth/hO1X6tFKLBg12iSxyYUlLRz+O0aqGq6E1nT6kFaIo9nYxMcegvv7m9p2F1ZEwJ9Ods7onYD+txLQGYi5eXhCuB9uzJCcd3zKF3vfAgZOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by MN2PR11MB4533.namprd11.prod.outlook.com (2603:10b6:208:264::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Fri, 20 Jan
 2023 14:18:50 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%7]) with mapi id 15.20.6002.025; Fri, 20 Jan 2023
 14:18:50 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] iavf: Move
 netdev_update_features() into watchdog task
Thread-Index: AQHZH5MTVY0mXjbUh0iZ3eIAPF4KHq6ndKRw
Date: Fri, 20 Jan 2023 14:18:49 +0000
Message-ID: <CY8PR11MB736437315CA81E2CA59620E6E6C59@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230103164227.33546-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20230103164227.33546-1-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|MN2PR11MB4533:EE_
x-ms-office365-filtering-correlation-id: 93259b1c-9028-47b3-3e9b-08dafaf1402a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xDYvZttDEg8XpqL4HA+9itet9NoKuZ+tllqCRiU8QkJ9YNMPHpnGVgxezZBqaZltagOx8kQVQsX+GEFC+XDoQ1YatSAywNN6+tc2hmwJr6ubbZ8hSFZJEXAZzIHEF9D29rxDBJ06f5LzwI2D6IAc9b736Xt8B9PU3h1ziPdGf4FPgYCjevHbUcWKDTfQZ/i22g86Tz4zHML4OzbZJT8w3JDemBymNViD2gEWFpqLkSlo9LnRuNdyRiglL66CYXzIES4XDaWVT7LEHTI/941/+9RtutPCqeALuJRuIA51+A0Fkop34cbmET868zrCoWvCRzYq9qYffLOGNjLiQe0G1NwJVguHUIXcvJ2e620m7zQAndQBQcTX7zOrYwbB+pLn47lN7eEkM+Bg8nX/sBRXWooYbqOZOVWVhifxwCK2GuiObGiRa+O4Sk1VIpX+U9swZb9N/344xgeTeBgfv+S4mJDRm6fiuEkwcZkUgYbr/CIMZp/CwMpbwwAUAHhl/ywckKX69Wxg50JkIfqf9b3WqpKp04shVquz89M++/pvEG+0UrS5GW6a0XITlGLyPs5KyBXe5EzxDR2DqLQwRlo+AyTWSiRtOFm6RlVwcjki4ubHbytb4vSvCQVNiz+K2J+AdRSHNSINDZ4pZO/9ZcpurM4O9sN6fvch0a/cjiFOMpE7o4nk46O8KouItf0pqUXpTmCoA9nrprCkwpcPaDEOGiTF9q+YTs8N/1e+LEXHsYg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(376002)(39860400002)(136003)(396003)(451199015)(83380400001)(33656002)(478600001)(966005)(7696005)(71200400001)(55016003)(38070700005)(86362001)(82960400001)(122000001)(38100700002)(6506007)(52536014)(41300700001)(2906002)(9686003)(26005)(186003)(53546011)(64756008)(66446008)(66476007)(316002)(8676002)(6916009)(66946007)(66556008)(76116006)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6IFmSApzJWvBpYhnlgj7QuHAs3O1KiEbfWrQYeoncLrDux0PSVovDn10PdhG?=
 =?us-ascii?Q?fq1NNWaH7RAINFZqrqhf2cvKtD9f0/kKW6egh4MjYNhnJPaV7JpupmzpDfFN?=
 =?us-ascii?Q?Dy8wJHfa6zaVGkCezYFn45JnYUbrxLLA3veaUJKKVKwhD8Igbqw8HGxoUxP6?=
 =?us-ascii?Q?MD4f6E9uA1DEGnm1IrpZcchoPbNgF5T2m8qMoKCndrkYUOaZUkCqsPI1yk90?=
 =?us-ascii?Q?BXusSxTMyFXfRclELs1Edkp+UtQTk0t4Ig3tqIzHcUSK0C49L/gUWphZnW04?=
 =?us-ascii?Q?Z1k3FFgf7jXyLkxwiBrCqm3f94ru91xbWk2AL4b+fH2WYwh/txz+9RUpdMtU?=
 =?us-ascii?Q?XGVjaFBM1BLFYrIPU5pOZRNGtZ2KVxqko0TaGsnbAgSPiuM017nGKnC/EKHo?=
 =?us-ascii?Q?5t2VC/GhLUBEyU3PlHBd2yrPTPNiRoE5sxkKX4/8f0STutzs9DSAF4SWC6iS?=
 =?us-ascii?Q?87dBVYPYSL5qZICbxRF97Wn82yUB/VhMAzC78eCTbsxOKiGd0R1A4ZlZrEEU?=
 =?us-ascii?Q?u8qgEww43/OBr7JJSphG6MGdZ2x7I6T8H2yOz1aYP0K1TtyKrwVg5dAMGaDM?=
 =?us-ascii?Q?WSYTYqWgtajVOF9uNcdBDwPNNr8KMIW9bfZunYxd3Xr1Zm8QAtQ8Igkhw9nq?=
 =?us-ascii?Q?LSUZq7c8q1tth4U8i8I4l2I0x5rC0+9f7axWO5omr4QMmiVcmCnoxndnF6C5?=
 =?us-ascii?Q?2GPgIcPqnlkkETxkhJxOQte8SEqTUb7mKEPejs27lZ+fd0Fxnz39UV2xoqpu?=
 =?us-ascii?Q?vu2ey8GkR5h0k3VnFWpmLADgKLsvKDF68lIjbtbUECC2uh/uB67TpBNDobAf?=
 =?us-ascii?Q?pubaUMOj5VmOyiBA05JoRGn+bqKabRVyWXt6WwFsPJJ4a1+fcEvk3q7Cub+b?=
 =?us-ascii?Q?39NjPCJdWJqbYbGhvjbjM9XQph4urWfK6exhaNKNDbARmWMTlJ9ifXNaSZxI?=
 =?us-ascii?Q?DYQ+ojyhkSPDoI8YsoV9q10776PuwXsPBAVuP3dy0OZQgPT9i8u583odU9Sh?=
 =?us-ascii?Q?AF9Rc7Gudzyc2z11tW5jU751AunBbpo4xXsjL5DRuRB323xFksHYdiuCtvea?=
 =?us-ascii?Q?9XHVScFDiJvHVEnxsILZzVPwKMGwPdQC6df0dPYXWfRbKufNkd1X63m3dyvR?=
 =?us-ascii?Q?P+PdLqsdhaqo3VvTBu5stHsN+nOCJdPqKwLNHo+uPJ1718/eXCKlbf7TVMwC?=
 =?us-ascii?Q?XPHq122RZuYlSLtzxrmpF5gOJCXX0vk6JgEtZxYY5/ti8J1tNjYTsq+pjE94?=
 =?us-ascii?Q?lK152zZSicYD3pdyGJvgkMVsWVyn4hAGuDS9K5UNAWfo1UvvXKSDkLjcQZK4?=
 =?us-ascii?Q?+ldgai6APea11lw3aMs2xQS8hro3BIzSg1qaN+LIiY0k6a7TnbANBklieHOo?=
 =?us-ascii?Q?HzJquku4NDVP8kmILxSb4AOF4To2SdL/z6kIb6ppsxlb0I+PJ4j29Lvt7ryc?=
 =?us-ascii?Q?YzGyXNgOKfNQELT6+uHFW9b/CcXGSm7AGak7cLLWI25ghrk6ux8hlUpFsuTf?=
 =?us-ascii?Q?pxe/l+n8jx7PSEVnnGpKRPstXVw3B7+/UOFOcy5R/UvS3PRcsHjPilTY0W9r?=
 =?us-ascii?Q?oQEfabhVhvJYtqUs5igAdoypyxB/1ExS3b0GDleM?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93259b1c-9028-47b3-3e9b-08dafaf1402a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2023 14:18:49.6450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yy+PmKbeEM1VDUPx/k8cmIZj9/3CbIwkWQa5CvWxvJl5XgDZdASoOGa9Pi2G6AqymimzHp13jQ+ZfqMU4vGfIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4533
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674224426; x=1705760426;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6Skfy+9lw7JbV/k6cX3BXt0tSYXAzW926ZbRVIgb9UI=;
 b=gM9nUd2KPP8fOxQdE/EZ0862RdElD2i2eUyTYI6M+wnLHpNlnvB7n96O
 AoqS85U1CsTd982hJNXZ7ZJOGWEmBreAHNmuOSKOpfsd4IXhiYqRjAbKC
 URAbVguZIi4SjfXAKLVFdwNeuS3NWyglyXQ+yIU39PJGbAwBnksyFWNwU
 msaduZLEqtm8cEhcAX3LM+vZRx6fmYSekjjGEThMDKCSnWXJtaracmoX6
 wnZLrjwklZsWiygHlUS9zYCkLKcvjUHDLbKAMQQseSx+Vvxd/hHp4hVut
 FL5NpqlnHiOwgp2kz0b8M/CrX067PY7pZDSFRdg4ztPscrh8r8pdLMgyg
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gM9nUd2K
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Move
 netdev_update_features() into watchdog task
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: wtorek, 3 stycznia 2023 17:42
> To: intel-wired-lan@lists.osuosl.org
> Cc: Wesierski, DawidX <dawidx.wesierski@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Burra, Phani R <phani.r.burra@intel.com>
> Subject: [Intel-wired-lan] [PATCH net] iavf: Move netdev_update_features()
> into watchdog task
> 
> Remove netdev_update_features() from iavf_adminq_task(), as it can cause
> deadlocks due to needing rtnl_lock. Instead use the
> IAVF_FLAG_SETUP_NETDEV_FEATURES flag to indicate that netdev features
> need to be updated in the watchdog task. iavf_set_vlan_offload_features()
> and iavf_set_queue_vlan_tag_loc() can be called directly from
> iavf_virtchnl_completion().
> 
> Suggested-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> ---
> This patch is a suggested replacement for patch [1], and as such will currently
> not apply to dev-queue. It solves the same issue, but does not increase code
> complexity by introducing a new task.
> [1] https://patchwork.ozlabs.org/project/intel-wired-
> lan/patch/20221215225049.508812-3-mschmidt@redhat.com/
> 
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 27 +++++++------------
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  8 ++++++
>  2 files changed, 17 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 931422485074..92ae7137584c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
