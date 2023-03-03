Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 464346A995C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Mar 2023 15:25:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83D0641CE6;
	Fri,  3 Mar 2023 14:25:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83D0641CE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677853535;
	bh=iOhXqzcf3Mq9nX8VaImqLF2yN96F6mXQmiP2SIwiH9E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=saqKDUEb+T/1hcPWNoUJk7DampffMUNDafvzWePUIhg/6TdyxLEU8A6EoRFR4xguI
	 gWRIQ47y0NPqNj258AxOCKi8XSsNluuvkJKbv0Mrlm/ZaAxWUprAMxZFBc1Vci2fxP
	 bfaECOaS0an3+8595YAJcspenkWPAqONCaUuj0UFXiM9FGD6BKlR1F4Tm+B5QFOVBm
	 pcUIlrepxb3pN0D+XQygMsIpJU5TP4maSLVeflPT7VMa1WFRDR9X1e4lEJNNZZ8U0s
	 N/a9+DvlM0tt0/PqklNiob2THA33JaXoKdh06gBPu60ql9I6daDmT6eBgu5I+p2fEa
	 bcqnlDgzeHaEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rg1UpDT3OW3M; Fri,  3 Mar 2023 14:25:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C85141CE1;
	Fri,  3 Mar 2023 14:25:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C85141CE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 89B741BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 14:25:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6BF3E41CE1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 14:25:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BF3E41CE1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Ho4Nz8r7TDb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Mar 2023 14:25:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58B4641CDE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58B4641CDE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Mar 2023 14:25:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="362645252"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400"; d="scan'208";a="362645252"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 06:25:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="799250860"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400"; d="scan'208";a="799250860"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 03 Mar 2023 06:25:25 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 3 Mar 2023 06:25:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 3 Mar 2023 06:25:25 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 3 Mar 2023 06:25:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VSprfzK14H23z/4yDEDb02PY0SnwznAHPsIT6oRgg+vE1r1p4cXJJprQ1SticgPjc3Cd8PmrYJh5DE9F/EMIgdP8+yH3IOaJCnrLzWSF+gV8PzrIuLrn7WRbae/O97UkqLEwds9ft3/VO8Ayl3StoGMUZxicj1cVs270Cim1scxRElT76Nh+KL/e4fDKttrFsBvMeMjLaKvafOnun8tKyU+m2AQFpqGZRJbermroNvOLxNRgVQLjexRm9psfC92mpUaT57LXNSdKJ5lb9TQS6q04IABqAzV4xfZ45qxzA/t5yapTf8x7IvhDqjMzfxSzXKo1JY+UYi3g0Dnj5ck8MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WqzYbp/0aJFT3koUkWZGBMKu1q4aYuyfRhervkpz5RQ=;
 b=UYumoMyFfgoaDAP8f/PznxbL+GQVGuiN4l5TKCxCMvsSx9Pd/0Er4/EWAVLSKpDeUjoC03pGvHijz0lzzGfyc4MDc87SsxKKPAYLYPxL9hRi40nUFyIL33FH0fqNzRqNohsskiadPfbE3mSdEnC+Y3/4Cj+E0dOmSA3BRhDK5W2Hk8oIR3vFoQDPhC7z7lbQX3zj0tpsHuCN0AZHlOYmH0THcyWdZF0oERK9QzD3LCRKXGYhc6AGlL79Igh0An1a4fpQ2w4w55pCUekUTO1Vnljq02SZ7884psfLvzw7H3Z/JVWUPjot15CkTxdH6yHpdKxEEPkyDxTvbqwytgpYqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DS0PR11MB6398.namprd11.prod.outlook.com (2603:10b6:8:c9::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.22; Fri, 3 Mar 2023 14:25:23 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::830c:3de7:a060:5e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::830c:3de7:a060:5e5%4]) with mapi id 15.20.6156.019; Fri, 3 Mar 2023
 14:25:23 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] ice: don't ignore return
 codes in VSI related code
Thread-Index: AQHZP6CN+zPw3cesrkOn/hZzD8XEOq7pOJOQ
Date: Fri, 3 Mar 2023 14:25:22 +0000
Message-ID: <BYAPR11MB336743BD4D4821241B813F30FCB39@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230213112733.12570-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20230213112733.12570-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DS0PR11MB6398:EE_
x-ms-office365-filtering-correlation-id: 2061e821-0fd6-4cdc-2250-08db1bf31fee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 86lroL5TKNizZUlWYHi4xtYCXlCB9z9JCfgopfpOFfyGnAwkL9tT417Xs5n0kfMmRQaCW5Kqogg5XwSc3xUd2bPNezT1FyMNhVwPksh8uOs9bUSgrVBvzKWU0v/g7BZ9aEU0Q5noMnIyBnHkQrbmBWx73odYpNpDUfe5Z5XV5ldI0g3lJIG92/dskwkYaCJNMxNt5BtsIuHv1BnADprzm+LU3KPca3+XNst1H7itMK4BVymkHn5LE+2AcQSc/gklJS3idOrlSiqHzaBO/j58saku4KnXr5vQIn4vn6IOxrUUBaJa29HvgMrc8wbZdTc4V99bAJpHmgpsApQ2LRtx0P4wdVUITThw2FnHfs4B64zXYUz3at9vTvKGr/6VIsP8fLNS4iL50aJdptxG924tdeuLe8aJBfExIBpJkBAIlY1COd+JX0uFxHh4h1LWn9k+oencLltw6c+koj32EQ85GVzvzxi4MwojGNGGqZTqp9uKzfdRAWnOYF0rQRgnD1dhRQMt5XFprnECI3JPYxw7ifqFPYS97i2Mm5Ql1YGW9KuGrlVHkDN3cJAMGTodGl8bpyJy5d4Rkivqs+dwtGx1LZUDO4wP+78gApvhOdr0WxObLdxsuTrIgkWWT7cuS1cQXXxvG72zvmvGolj4v2EK+m6wtS6tz2IlpoVXd1L9uZsVLOZa6kRate1OTAyP4sMWczOopmikdBVTHxRrTjSIsQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(396003)(136003)(366004)(376002)(451199018)(8676002)(41300700001)(316002)(66946007)(76116006)(110136005)(2906002)(4326008)(64756008)(55016003)(66556008)(66446008)(66476007)(52536014)(478600001)(38100700002)(38070700005)(122000001)(6506007)(26005)(82960400001)(33656002)(7696005)(186003)(86362001)(83380400001)(9686003)(53546011)(71200400001)(4744005)(5660300002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bGON/9nnja3yyqIuNFidBmC8GnyXds0Nzs8PldpQhlqjInvCKmUOz7ybCkuW?=
 =?us-ascii?Q?d5nwUDFrQNo2DFAM3ifCVACdBvMHgzf5p/Rwj19gx9U2H9RfPvbOQ1yU/1So?=
 =?us-ascii?Q?wsohBaSPVM1wMz1Bcl7HrYgvy8kqwAA6rPLM3BuXKSABvH044qKNia3dCydY?=
 =?us-ascii?Q?HClhNpHuEZwNjU33jcuHJlhDtkgDFCN4sCQi0t5mTl0I0L15CvAFJtXn0rr5?=
 =?us-ascii?Q?anzRGHqRvzUJ2PAFWybEjc1GE6cPH4Z/eELxFkMDNVI5hgAW1cV0LowLcAlz?=
 =?us-ascii?Q?Z1khz8pMamqZ1yhu9lmRBCSFIMzOYcHpS4dKPpqJl06Ymejy7YzwLdltNteE?=
 =?us-ascii?Q?zNbzybLVXPr2A7jlEwaYoPGJamp2A3AjOetUaaLXcv6uReBlMHzC7VtH5mZT?=
 =?us-ascii?Q?ex7FFmRqTGCZN0qX0trVACU4Qo4JWYdhcMmH0e8H9IDVjIOnJnYDWJC13DaJ?=
 =?us-ascii?Q?2dTw7JvpWKvuyTEGhmz0752b8rP4dDz78CS0aUxtd+zMrYqAXGMYazcPRMCU?=
 =?us-ascii?Q?buhLOee/XK7WAr0qN1slnAr4Lu2kIanvVVpMulesORePja493kvxkOUmyjDd?=
 =?us-ascii?Q?GgvQZtmtRIlxinTno2PriIddU1oR30tAyrSmxrR2i+lMypPeXFItKG8FCjzO?=
 =?us-ascii?Q?k+Fm94GRFCuHoFk9Mne7bKrzr/TB/zNtP9ECAYnby9dMmqxh3vsOlo3b13NX?=
 =?us-ascii?Q?GS1WguCt2i+KVba8d24xuxdl6vWgwMyH5OINGo0f8/dCNQxszLy/NNzgPt17?=
 =?us-ascii?Q?Ut1h2yvhOb1+sqx8N0VKFI7bBC/ObevVH/lA936+cjbk4qxsL3CmmztZgAuL?=
 =?us-ascii?Q?gvEql/fvrG6CMVf8O6f2RrO6HkLEx0A4sK0+xgr3a+SuYP2DsuTc22vu0Mgn?=
 =?us-ascii?Q?1yWe6jJMHZ+wzxb22XBTtVtWdaU9H/w+OfrZgs1n0Btejw3xYncN8DIyXIXg?=
 =?us-ascii?Q?lsl+tR7iBtnB342/u0WjJ761UOYdGQ+GHK72ohaY0xQP8wq1PreXfGijBf5N?=
 =?us-ascii?Q?uB+Q28mlMEFt0QhLX5LfP2+XM/ZMVRGXQHmI/ecQjphtSlN60KuV2NtVl0ut?=
 =?us-ascii?Q?7hrEX9+wnpFG4XXB0zxt2Z18g0cGGnjKmm5WFVDok7afBQKmfl7b8fzApZmE?=
 =?us-ascii?Q?wnXyEJksl7bIO8B/C6TzyUukO94H94YhV/PXnK7TiyemT4hNwj375XA5KGgh?=
 =?us-ascii?Q?bXUlevBjoINASYIh0FmkxWC+/+84qd5JitoOGhCf/6Weh5O/09ac8EtKTMF3?=
 =?us-ascii?Q?MTTLlcm+uxTJYFglcexb0EOvE9tuYXzpZV5wmAk4jaNwDakAkRKYPq0Ta+3m?=
 =?us-ascii?Q?gUclYp60P6Wv4SObREZAgCa7dfbx7xNycU31NsEJy4WQnGNmPMX4dYnM4Gqd?=
 =?us-ascii?Q?K6Ep673BIkiCs5MuC0xsy2AnNeuHUXPlcewAmgl1YQ6wRoIFFijph4hYUnxr?=
 =?us-ascii?Q?B5yTWLBxzpQZv2INdjBZerREONzmG90n3p9GEwwpP+0Cu7oKZO4O4k3c8JTT?=
 =?us-ascii?Q?nLdG1iLEB5msZpWHXBouqb7zPWj5jaZkwcvmujc1zAphQO182kOPlZMbtZOq?=
 =?us-ascii?Q?d1vYb4vI6pfG/t7kE1RCOAkqznRzCXuGSAwgtgds?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2061e821-0fd6-4cdc-2250-08db1bf31fee
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2023 14:25:22.9135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K/MVq2jix2WhRLIi1HllqYUufcznqIDR8Y3F5ekXEjheOcs2245BT7kCrmSsm/fn6ZZ9nXyeMtovCgvLAn8zmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6398
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677853527; x=1709389527;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YqcduJ3LMucV1mlxSy6xPUeeV7/x/kcS5dz/Nn0TGyo=;
 b=OPwu/r7uqgrX7bkNdk0Hm7pw11DG+9WPR0U2mie319HbRSyzy5h5YjyK
 KYTRow/ciDOlIFNCdSFxmOdXl3YhK7Jc93CFiPCVM01lEYobTHXOHyrSE
 OmKS0y+VzYNHRB4asoPGuwRsSLQ7E6Qq/Lt3sYTX80D77zZr4eXkkd6EM
 FZOlZN44RfOWSiMHUXE79QDrVcOl+73WvoaOEFHwUfp6DL25GNjRsSEqB
 CchjtfbSQpTmmTwssG+EDzuGFHlIF/p++o6L0xz0lEWuGy+K2mVvGo+Kq
 YzpZVVkeqwVzQGqP15GHkmtmyijWM+Y249wNtsYDXWEwhovqhXCkXx8TB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OPwu/r7u
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: don't ignore return
 codes in VSI related code
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
Cc: Dan Carpenter <error27@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Monday, February 13, 2023 4:58 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dan Carpenter <error27@gmail.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] ice: don't ignore return codes
> in VSI related code
> 
> There were few smatch warnings reported by Dan:
> - ice_vsi_cfg_xdp_txqs can return 0 instead of ret, which is cleaner
> - return values in ice_vsi_cfg_def were ignored
> - in ice_vsi_rebuild return value was ignored in case rebuild failed,
>   it was a never reached code, however, rewrite it for clarity.
> - ice_vsi_cfg_tc can return 0 instead of ret
> 
> Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
> Reported-by: Dan Carpenter <error27@gmail.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
