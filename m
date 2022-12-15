Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7496164E3BC
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Dec 2022 23:20:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB8654048F;
	Thu, 15 Dec 2022 22:19:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB8654048F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671142798;
	bh=qJsaxWJU1tYWIqQkHX4+G2fWmdfQVXJpNP8nPqXrymU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FP1DQwatz1xsqG53VmCmi+eBcB8loD2vjCgYXczKYYxiJknU8qtpanTfjnaGRFBxL
	 N/a0fnsfw6uK7FomKvy3kkHM7bf1YLYlZNaWx6kM38v3NWL0SVfwC6m0PcCj3MeVlF
	 B8EKvcV9riyE+ryV3YNMRmb8OBtIphqzy5bRu3LZSV00PI+QH4ws6zfB1RNQ6Fvhcc
	 FLUu0LvBxmpPrziWkX+15FAO/fUm+tcxDwSFgcg0cYzjN+ewQPzjCYODR69x7GxtpC
	 VM1w3qR33u+SL0qlqjG9LXcwvZ7TZwOhUXy5MOOMT2e+eRDnnRXn5tefJ9NVc2Wso7
	 EE4w+U3MBHDaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bd97g4rCP5qJ; Thu, 15 Dec 2022 22:19:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5741C403B8;
	Thu, 15 Dec 2022 22:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5741C403B8
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FFE91BF335
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 22:19:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56998607F5
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 22:19:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56998607F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O6wzI7Hw76SO for <intel-wired-lan@osuosl.org>;
 Thu, 15 Dec 2022 22:19:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97CE160634
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 97CE160634
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 22:19:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="298485097"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="298485097"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 14:19:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="773919799"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="773919799"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 15 Dec 2022 14:19:49 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 14:19:48 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 14:19:48 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 14:19:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QYU384cU7XisS3p+D7stbHjTWsFG/qOK1SBEFldJu3i9cpuP21Ex2Go6iplkfbp53TW6emctSQF5Tm3CayFw2jPzWD0F8yOx8CTsokJgHbPKgBiX4Xr7eGZp0sKjijwO3psiFGfEzdocJplMRrdteLel1ick0PHnthTADXzQ96T7F9KEmy71K+8HbHqd+NI0rB1CuqwD9RzrvsbTWQEBAr9dVTMzzlSj/76HNMcTOe7eEr0BNjKBuXUl8oAtzsg0mCGkq5zwRqFAK4GlEtXMPtH5Y/xy7v4KRRp6Pf2qoFAPxs+R5Bz3f7OuErJpWhuAMTg3U6I1nS074/Sc8Co0TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7KYLpzHVmMzTwlaTZGq82uTt9YBcv/vHfn0ltTuLKIw=;
 b=jcMHHuZSbOp4mkrpKaCl0nhB5Az390HhT3dlEhEK+cww1eXXBrpf5VWkj07Z8EWjw2e+hFqSsGU8SyvzKlGjhcgE7CupwTs2vVZPvcaUp0Mia0ySoS5vncPh+TOdY4ycKD5mY2er7R7UTHx581EnAJDpmOA3RWSlKjuNURfKV7WY0FjFekOYCsqLg8uooeUetm3vMby+KiibUMBPfvgmq4wA8AqWa5oJVWmWMhHi6VZZObleOb/35BYKXUb8Vax48fEcUHndJgcxMId1wt8l1P8h6D71SRYEN7bi1BwduI4N2vvSF4z5/3tEB+/GPrAAQ78TKjN4y5QrDXyV4USgmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by MW4PR11MB6787.namprd11.prod.outlook.com (2603:10b6:303:209::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Thu, 15 Dec
 2022 22:19:46 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::8923:42c6:513e:a331]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::8923:42c6:513e:a331%5]) with mapi id 15.20.5880.019; Thu, 15 Dec 2022
 22:19:46 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v1] igc: Add qbv_config_change_errors counter
Thread-Index: AQHZEDc5cG7MMpAyMUCkEv7af8/y0a5vRnwAgAA/k8A=
Date: Thu, 15 Dec 2022 22:19:46 +0000
Message-ID: <SJ1PR11MB61806EB538F681F469C6C31EB8E19@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221215033911.18152-1-muhammad.husaini.zulkifli@intel.com>
 <SN6PR11MB322946431E494ADB988E4E89C6E19@SN6PR11MB3229.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB322946431E494ADB988E4E89C6E19@SN6PR11MB3229.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|MW4PR11MB6787:EE_
x-ms-office365-filtering-correlation-id: c62f7386-016c-431a-c496-08dadeea795c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IA7hZDl1kc4ZEH3iMtXPBK8xYb2xsQh8z+5CVieqZ9FjPhDdPN9REkOPSthKu99PVdNtW1EtmzQFtJFO5J/fzzAWnZlaYF5W3Dugk8O+m9y0jp7QIvO6CRaKzTb1iUdEysnVByXuODXNSiTl/0y1ncxlxwZgEwwwoAWxb8VnYaG2cYFhgiZ7r5lIN2eBFmjLvxDyvRjgIYy1XUWTdZIDpkF+3UubXzLKUVS04zHWaeX7HtH46PHtlVukshV7VT2BDOc/bw8oXngvh3cupWQVyAx8W1mC4+3IwWUwziSaae6fzoxyORKuWkT/pF+/Q43FENyv0wYf6GVznftRq8bfMLAI9B5Gi/yIMc9qu96kdPGIdxzzs5cHVPrwaKhWX/ga/ufGKpaQzX2CscO+kz7r2lD2IgOeeH4+jOcAidufJlPlvmw4BQZzto0pQKix3iBHxwRAEvAdxvWk9bG5zgDPMRrKqdb/yUjbrx4Rd1AopTTJmst2rAK4H6d6r3V0v4xvMSAN7/Ol9bjT2eODlMaABZUUCFqPlmi61wBwOf3lW+Y+cR+2BPK4WMB87Xjvm0HSm5AjeuaF6+42BrYpYsxAJlPGti30apNW9S/9TCIwPpwb3WJgBhe6Rg6ZLH1agRlmfpvWnyEvQLqxDQ1efTwWMcFrAvvzmhsprcZpCqZea+NBgk6gZmJZqNchhDhdW8xnrfBXIXnCEbXdRRUdRQx9tQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(396003)(376002)(366004)(136003)(451199015)(7696005)(6506007)(53546011)(71200400001)(478600001)(26005)(9686003)(64756008)(110136005)(76116006)(316002)(66556008)(4326008)(66946007)(66446008)(66476007)(6636002)(33656002)(8676002)(41300700001)(38100700002)(186003)(5660300002)(38070700005)(86362001)(52536014)(55016003)(8936002)(83380400001)(2906002)(82960400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LPXR095C4vPdMsduLqbNOVKj64MkceyTGdLArCTWYrwrlaFAuGZwZVSlpLc7?=
 =?us-ascii?Q?bzAyt9XHnc2WteKtnOxfgODEOKZeL7vncMosb0ISH7fdZRIxcC5D4X3k79FT?=
 =?us-ascii?Q?POcTKwZkKYYLdLmdhtc+PQuH9I6laRdBY210nASfXE5Q+dxPu91I5r1+EKPt?=
 =?us-ascii?Q?n6WqkJemobwGyWnFaDYpsP64ASG0C9o1BelRt8rGvy5iAKQgbkefZLf+iPmH?=
 =?us-ascii?Q?pJGm/Xv7mR7DGIS0uRX9yHGBNuGXj7tfd+Oo9s9ml0Ok7/oVTp65Wg2vRSna?=
 =?us-ascii?Q?Ev9AnhqGSOH3R1Doibn4Z58Tof8H7NKXAWwBxnAUHPxUemjTnlxq31G0Ce7t?=
 =?us-ascii?Q?KtPTyStCBSnY/EyOh2MunczuYq/Du1EuO2IvFdRLPI0R2iE2J0oKRMWck9TK?=
 =?us-ascii?Q?53GTTH1Sx5Eaka817i2iLHTDnaE3c4VL6RImklt/ykm89l5XwpTd9H/GTWCY?=
 =?us-ascii?Q?4f9x2P5xkEJDc+rXcY29w2AZtYhycWwdDydgDMrRZ2YVWNwl5+kata7X3J8C?=
 =?us-ascii?Q?DMN65ooub28Ebjtg0xkqfBRdAIFU2y+xnFuTT+n/OEKXU3nxlBXb7cb239cF?=
 =?us-ascii?Q?NQlWDifLppOOelV/GAlOVqFCmwAwy/O6Lt558YZngcWiYniLRkaieiTagicC?=
 =?us-ascii?Q?OV/ICd8ttEong426TpVDrwMnT9WMmoycKcdWaMpwpJQApuHg4seN2OqarxC/?=
 =?us-ascii?Q?vWx8G4B2Mp5ztBeYUY7lgQQ1s4tWHj2CMGUyxhIFMxClTgOe6hNXRcW5ZpgM?=
 =?us-ascii?Q?bTRrcuCnuJEQ7ScnRTXzE5Hqv6vEHHJVSqg+z8uRAdBs+67E+o7J69WwAIoi?=
 =?us-ascii?Q?Qv2e2ODgPEcIAK4RBvkgu6bMtI6ebkpOfccqYGG7VqUqd8EXkpbS3vVrZM4g?=
 =?us-ascii?Q?+ZgzaI3VZDv3zHvztsUTd3Kqi70XHGGexZCy9iEdfdSh0QYb7+i1M8BwO/HK?=
 =?us-ascii?Q?T1Udhgg2/T6iisx/T1hml5fEmvIR7l4ZGP0wvQTPcHOTDVN5t0aUY4pxfkz3?=
 =?us-ascii?Q?Hi4SQeZ6c/m9x98WUNNmQEku6muaFWQnDKXoR2kPx/YoJAcrIktpPPYKsPb0?=
 =?us-ascii?Q?750ixmHCyYQ69d/8bABkX5sqtTY+FPEGKMCpMxN7//csbSwPdrS+PZtBrKAJ?=
 =?us-ascii?Q?5vyix7o6MKTRCE76F09FxL+bOX7gVOHPIAk+1J9jSzdGuwB7ek1eDsYrWhp3?=
 =?us-ascii?Q?FjZPggSEX+rqTZEWcDxMXKygnzQVXIoT4J1rVx+4v+UVH0+GwnSDF9eDPgtm?=
 =?us-ascii?Q?Bp6J7HNy6mDVW1Ac7BEYkSm9A6qVApG2QSZSFt+r37sb5ytye22H/onmeAIc?=
 =?us-ascii?Q?4fFQwyhqF3pjWXKeMbrUHuYzFGPznDta6IWxyqNyfCnUiyscFZWF4QfGz5q+?=
 =?us-ascii?Q?Uxs/RoIqwqCiSx0U+GCy7Dp4mumBbr++U4gKDW6caWWgokQiBpJPvj0Igs8w?=
 =?us-ascii?Q?x0hdSj+QsCFNoLbxjd6T3H8AZxzK+Gp8ZjeMmtJgoYz4qxjWFknHmADWMIEV?=
 =?us-ascii?Q?XdNbGDNbI5Wd4gAtPVB66Xwcr/oVaBMvFh9PZL3sSD58RKabhCsVT6YbQKUR?=
 =?us-ascii?Q?IVWiD6ZwkXk/odkZ/gOQCKaKDeGGYsAEvkFh80fHvPSxIuc6AGPPMBDNh0an?=
 =?us-ascii?Q?UZ03EHi+PK+3M+fBEXWCc1s=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c62f7386-016c-431a-c496-08dadeea795c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 22:19:46.5870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3GViZd8Wkmaz64gUyUUnf142vXHfI2xOM1Z/2cq123iNdAoIbEngZ4PBwzV+eERCCHNxv/9NhSgleioQhXnOpTYgCfKUQpdJojaMADsdi3VFikv2V4g8ZDemeQ9/gUnU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6787
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671142790; x=1702678790;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7KYLpzHVmMzTwlaTZGq82uTt9YBcv/vHfn0ltTuLKIw=;
 b=ZRgJsKw79uCLnKY7tl1hSqiOU4fu+JMEJJ33VUR9mWvIUcLPUE1z118p
 OcIRSn2EIfzA4BJ/MIeTEm1Of5hZqqmkZk5FrhaXriEr3oKrWqk4JQ5gE
 VGVGBNubUup1yXcoiT2iGqMTogj3WzYTDSlaujGPyYU59vYg4ZzET3lYg
 Ribca7DjrCRnnnzzspKbugTTSdGtQ91eq2466g9mPVbwK+qeRgRbZ/7xE
 gIz73S0S8hqYTdJ4+H6o37SrSoKYNycUuPeLhgqrmE53A2wKGkg80H3se
 pzQvLreo+/Yji8P42LHIuY/6wa73QD8UgshhWi4og93sjHaQVFeNjhc6v
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZRgJsKw7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: Add
 qbv_config_change_errors counter
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

Hi Anthony,

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Friday, 16 December, 2022 2:32 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org; Gomes, Vinicius <vinicius.gomes@intel.com>
> Cc: naamax.meir@linux.intel.com
> Subject: RE: [PATCH net-next v1] igc: Add qbv_config_change_errors counter
> 
> > -----Original Message-----
> > From: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> > Sent: Wednesday, December 14, 2022 7:39 PM
> > To: intel-wired-lan@osuosl.org; Gomes, Vinicius
> > <vinicius.gomes@intel.com>
> > Cc: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> > naamax.meir@linux.intel.com; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>
> > Subject: [PATCH net-next v1] igc: Add qbv_config_change_errors counter
> >
> > Add ConfigChangeError(qbv_config_change_errors) when user try to set
> > the AdminBaseTime to past value while the current GCL is still running.
> >
> > The ConfigChangeError counter should not be increased when a gate
> > control list is scheduled into the future.
> >
> > User can use "ethtool -S <interface> | grep qbv_config_change_errors"
> > command to check the counter values.
> >
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> 
> This patch doesn't apply to the tree.

My bad. I will send v2 to fix this.

Thanks,
Husaini
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
