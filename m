Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E69A7BB53C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 12:31:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E8FC4177D;
	Fri,  6 Oct 2023 10:31:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E8FC4177D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696588266;
	bh=w2EqH46l3J4xvWK8Kckq8dYEPOAexr9iFxpU9yUHz4Q=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=47+tDxUn1UVU7xF/NAN8VU6Uw+zZH2sMrPkTKhlpxmkteGsRqRTv4bqx8sHGRDW9b
	 q/en99XByVlf54p4K+klP92516/HvhOJyVgcWV4m44lcuQcNkW7rrRCRrVb9rE0d4Z
	 0FOMgPFevncVMScDxXlJyyAOLyXqu/mTdRbllqti2WWyOimqZb6Eq0LqQU11TWXXq3
	 kMx88b03hxwEvdBT9X7vsnN1sk7XifWkQLx2+/eU8x+W+EKUqzOnqRFgxG33lZQsUP
	 s5dlQiV82axqSxcwnM2fkwlo61UfNLP+1xdZ/uIwWACbLJCIqp+krKPNBMqjIaHPAl
	 9l1gQWy4MItRg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2dlZVzJKJdfx; Fri,  6 Oct 2023 10:31:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E3F604042D;
	Fri,  6 Oct 2023 10:31:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3F604042D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A16841BF35A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 10:30:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 782EC826FF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 10:30:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 782EC826FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wIRvddj5wnPq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 10:30:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 95CED825FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 10:30:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95CED825FE
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="382591843"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="382591843"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 03:30:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="745832812"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="745832812"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 03:30:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 03:30:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 03:30:51 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 03:30:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NotljB3iiiC1cqLI/ZMiHftxtNxT342eCa22Tq0NTSA4HLIFDCaM+oThYxkRo3z2+3vOVyz3khq5g53wfQ3N/zWDJw+vQFBwxpYpqDmWMrqZ42/oJkIzqgoLhDSDdbYhOiSNFA/66ooSP4gQeocd6flNWnidELM5GSbewdjXEkWLTSahOZFGOoObyNxoE/2fLNhlpqt7a3LIxO+RFhrWquZ+apXaI4Rk9/PlmF2vqEU1UMcsUFgO26C7KO1I0Ard+dYcZIh0JlrsmXxGjWBLHMm9xbIDQ/AeGgy/QhRMcLs8v8kwPX3O0DVITVMWPoXy9lWLLRN7TT0BSLKpRQg43Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MNnp9W/gDeUmu2bwQoTPAeDOLcFfr2U1UkqkK0ep7+U=;
 b=n+5nCQSD0OQdZ5KuU4N8XaBKDZPH735pZ3rKGGV8KR5OAR4KqwiwiiUS4YS/IgWoJFpE4Mr/p2DgeMB0ffE9SY/lN/tBW1wiiinIE0CGZ++1mTRQfvqFIM6GS6V5eJ4OpUPPHdpx/+W1ibYviU9ckF00uLpp9gmWYuXPY9Kg14WsrTz+buB4b4lrBfV7kByWKBn0qY3SqdOZKrKMOxXYHkGn8V4DcT1QjbSo6F2dbmG5VsbGddBdsfjszL4klbTFvXAkpViR8Q8UqFucIDS1MgwU0udRVcCaoJEhM3Xvty87OlbXCKKxWmiIpe/AdnFG4pAUw8kPudzERpC7oj/E/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 SJ2PR11MB8299.namprd11.prod.outlook.com (2603:10b6:a03:53f::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.38; Fri, 6 Oct 2023 10:30:42 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f%3]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 10:30:42 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [PATCH net-next v2 2/5] dpll: spec: add support for pin-dpll
 signal phase offset/adjust
Thread-Index: AQHZ9qJf08PHwc1Xu0Cl9IfiqlK4hrA5cW6AgAMhTTA=
Date: Fri, 6 Oct 2023 10:30:42 +0000
Message-ID: <DM6PR11MB4657995D4CC1351343FAD41B9BC9A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20231004090547.1597844-1-arkadiusz.kubalewski@intel.com>
 <20231004090547.1597844-3-arkadiusz.kubalewski@intel.com>
 <ZR1BYQuSfdMdDimH@nanopsycho>
In-Reply-To: <ZR1BYQuSfdMdDimH@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|SJ2PR11MB8299:EE_
x-ms-office365-filtering-correlation-id: a79fb270-2a76-4069-bf33-08dbc6574ae6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I+snMfkq2ywBANTCD7IB14Oz2oueFzyJoixgYGbrfM4PRTU4nk9HMSoHAVmuQbAlRSC88zGLHSnkbcpZ0yvatCz+aNXyEbdJAHo93/CphmGZrIIcGcNUoOruKtuUhn412koyrxQOu1FCcRQy1ujzEIaEVuJeGfcx/CNL6ltO3cGrWxB8az+YbAzdPz9o83qYKOCXltlAHTFOTyO0Ym/dfuNJem3tFzN2EC7puBbiN0dIOeH5VA1PEIOUOYvnV7ahu81lYDqxQIn6/KPe1e+obIyhjhFlBRQ2gGKJ8VpMWBdWbe3ajTiWYL0SoZlUcLTKWATFBYwca1bGwJD6GwQ26/3lM73+iE413tYwBnsuW4p0U6BriP3Y35bUFLCb2jSoVyaspJu1m22UkbD8mw3ynOAZ8R4YPTwOv0g3U1EpzlLKAbu9tzqTat4/kr1boYDrojFCbVQ4azaeCIVy8akQQZMzi12L3V+AjV4oTls7w8QeOxgrsKHQeGTxJHvBptGyxmflYsAFfai/HSnc5H34tsrmRHKvO8zqYsPLl5HxqZZVtYnZsoDZ9DcFq9rOsjwo8h60zjww3L9FD5AbE9zLfttSHabBhJKI92sOgF4B3JqjbR50NREWNy2mBP7Uwv1n
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(396003)(376002)(366004)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(55016003)(41300700001)(9686003)(7696005)(6506007)(122000001)(38100700002)(38070700005)(33656002)(86362001)(82960400001)(2906002)(83380400001)(5660300002)(52536014)(4326008)(8676002)(26005)(478600001)(8936002)(76116006)(66446008)(66556008)(64756008)(66946007)(316002)(71200400001)(6916009)(66476007)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lporoIiZvjAgQiZCuqgffpbg4ZWW/3wQJFZYuhcKObhEUDs7K9L7mNXKchgh?=
 =?us-ascii?Q?szUQfKqKbLuB5o89l1+MBBPGClsjtvNHC4s0lHE+osLZRO6AktFRM4YhQYWT?=
 =?us-ascii?Q?5UVBumuBxC0FIpKTK9zMuk0zUSFl5Zqe/0ilTLgV44L+TtdkR4Qe3cRlXblS?=
 =?us-ascii?Q?87USjnRQ+fk4SgdSzNcrGVkqLp907zUoEVOuwV9jpNw9OONRiyA9NJJC1Nys?=
 =?us-ascii?Q?RGb4C7/+iG84utgG5BLKnliBbMsDEW8rAiEqOtXATwT04243tAVXrwVLLJjK?=
 =?us-ascii?Q?e044VXiCjH3xSlm9Osv2g+w5mfKaxdQYwCYjO7Aca4yTqqSL1hSNR1p93mjX?=
 =?us-ascii?Q?PmUYFAswKzgQPyI7Y60CGLhIVoHu9k7056TeE3pRP1Yx7TBXQYNRBPC90vDi?=
 =?us-ascii?Q?BjNR/tmN4RlUbh6RI7a1640HCg1oz6AHQtJh7/sgs54mDUJV/ZZ0koq9wurV?=
 =?us-ascii?Q?XHLvt3qYZsTqnOapFiJ/zwDDDOccelcmME7eNLaJUmVTmj3OAKEpj0ZhWspi?=
 =?us-ascii?Q?I4TSSLjhH1pHLNN05UkrHT9lSm1qjjqfPUaJTntnmr5WhTqWkq3P08bW+Fwh?=
 =?us-ascii?Q?um4TlMFRqw7wK2HTW03sRSKcYeuJRXlp4g+cnEKJgcNghfaNAGh5Yg2GdG3z?=
 =?us-ascii?Q?yvE3LyKF7IUIsAoFChm65oOAh5kKYbT4lFGytm+eJ4zRaw4u30bzPi6kZXvC?=
 =?us-ascii?Q?kFdE9Ywa34j+UPqzwzgrffCAAr7ZldPRNz6VUbWbJxFblJekXRpLld3W2nmo?=
 =?us-ascii?Q?0aPO9z1D74f3w/zUcEGQd82RopjVeTeJBvq18YLojPxStrpSaG+jy8u8RYaW?=
 =?us-ascii?Q?bRhEG+KO+R8uTWA33SddLOhHXLBMktB1EfdSPFk83RTh9MPMnwApQqSIffjZ?=
 =?us-ascii?Q?mWeflNlhcL9JPXS46w0Ya2K4maSiz0+GxRb48rKdItIs9rZuEmJzI4CON9px?=
 =?us-ascii?Q?O2G7XQGvPceMxsrQ5mzlVfEn2TlVF1682Ry4Z8Iyg9HPqsQ6OvrAHSMEFTSz?=
 =?us-ascii?Q?E0N6H03KrVB4v4jZ1wHlGOMbeCwtm7AqexPyehtoTvsKK6eqJIPTcy/A63pk?=
 =?us-ascii?Q?vin1HK/iOJih3x5zzzIetfd8faNNRBGzJuKkwB+KxiU807gdm8bOJQgSecsd?=
 =?us-ascii?Q?MAV+LpR9dX9yuz4vwosDvlj0jDfWUXw3TmAl/2IdhDc5MIOExWS+BCpUWIKx?=
 =?us-ascii?Q?o259Ov1QNLO4dIxO1NheyC0RY76pbnUl+tsRadMzxZJrh0mUaK814MGDsmQE?=
 =?us-ascii?Q?vrmqj+1YmpR0qqg4DkO9F1BxmoIqIrkZP34oy/ABYlw9fD52n06+LE1rtyx5?=
 =?us-ascii?Q?Wv25gczOFAtOz44LAm4h5HU9prp8bH4n9icRi04d78RaUto5YwCosQ+4UCgL?=
 =?us-ascii?Q?1XnaxqYPZz8iaP6tdLyd1sRv0ega2pvmPKKp1Pak8MUwcigYCe/iQIX9AhVP?=
 =?us-ascii?Q?Yt0Bf8/YQ9jNVLh0/SY/mZoe7650auVSiAUKjkAssV5lYkjF6qyoH5TexGnq?=
 =?us-ascii?Q?/yJeoYOZ6qzA2UVra+mmHDabiTWhZrfXjCLveMlUHqICftlbZoYSzZxCaYyz?=
 =?us-ascii?Q?m6GWQ6KgWcOV3reI7BTRb57k2AxgpMZTYn+ji1D2S/7EtnpKjFDB+v94YoDh?=
 =?us-ascii?Q?Zw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a79fb270-2a76-4069-bf33-08dbc6574ae6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2023 10:30:42.3911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2ZDQzVObS6kSI7pik5PqWgCaSnAUbrsZ3E9iMIOmDpBR69w231Z/1IL4/PY6A8zQrroHVsp5e4nCJuOQvm7nWIBmtQ7+9XyQuJKfvBDcwOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8299
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696588257; x=1728124257;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jxskoQnQIIPZ9VZgXyKnQesj35RlpoJvwLtEUQTVmvc=;
 b=IN0KLu5DK21U7iYCKZih3tXHO3eMTSP2DuiAeInIQZIuXHBgdJIVHJ2v
 /Ds53csSzqQ49W35/Yq9nUSUmh2+nfnnTc3ZSeNxFW+vwt9IDfZuYBGTu
 5dXMZ4OOyiTofYhPhVWjlwr3wh9I8I5f8PM0yZRMDzELvLs6Yi7PGKx2x
 Mjl/APaWeck3bwPlQK7tgMcHaUvQQ5N1hcKHVXkRQQ8YnGvk0WCOTOyyP
 rEYSrGRt6vJOmnc6ebGMobPgZ3HzKLDNA5trlze4bAIOgvl7DvXiAxvPo
 uBffIYCa1IHHiZ9aef8A4cJVGBIEqNR67Zj5DSz3dgfYst+sJ+wdWErtX
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IN0KLu5D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/5] dpll: spec: add
 support for pin-dpll signal phase offset/adjust
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
Cc: "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Wednesday, October 4, 2023 12:42 PM
>
>Wed, Oct 04, 2023 at 11:05:44AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>Add attributes for providing the user with:
>>- measurement of signals phase offset between pin and dpll
>>- ability to adjust the phase of pin signal
>>
>>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>---
>> Documentation/netlink/specs/dpll.yaml | 33 ++++++++++++++++++++++++++-
>> drivers/dpll/dpll_nl.c                |  8 ++++---
>> drivers/dpll/dpll_nl.h                |  2 +-
>> include/uapi/linux/dpll.h             |  8 ++++++-
>> 4 files changed, 45 insertions(+), 6 deletions(-)
>>
>>diff --git a/Documentation/netlink/specs/dpll.yaml
>>b/Documentation/netlink/specs/dpll.yaml
>>index 8b86b28b47a6..dc057494101f 100644
>>--- a/Documentation/netlink/specs/dpll.yaml
>>+++ b/Documentation/netlink/specs/dpll.yaml
>>@@ -1,7 +1,7 @@
>> # SPDX-License-Identifier: ((GPL-2.0 WITH Linux-syscall-note) OR BSD-3-
>Clause)
>>
>> name: dpll
>>-
>>+version: 2
>
>Could you reply to my comment about this in V1 please?

Thanks for pointing this out, I have missed that thread..
I will fix it as suggested with v3.

Thank you!
Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
