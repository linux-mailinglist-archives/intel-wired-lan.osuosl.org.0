Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B13D45BBA1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Nov 2021 13:18:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44CA061551;
	Wed, 24 Nov 2021 12:18:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pCYef_QMOe8f; Wed, 24 Nov 2021 12:18:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5375C60D6A;
	Wed, 24 Nov 2021 12:18:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C1AC1BF426
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 12:18:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9698E81766
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 12:18:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 007Yu0EaO-z5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Nov 2021 12:18:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EB8098102F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Nov 2021 12:18:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235503481"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235503481"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 04:18:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="497655501"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga007.jf.intel.com with ESMTP; 24 Nov 2021 04:18:14 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 04:18:14 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 24 Nov 2021 04:18:13 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 24 Nov 2021 04:18:13 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 24 Nov 2021 04:18:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iimiVipHrpWSZYNVFtlDqdKebZf7A/qX9Tt9gpbq5xVqbMWUz9tiSly6VRu6Kf4/1Ed8ARAqcir95lRsHOlM7IWFTbjl8F+rtGN+0ZtxEcuFmLVmhFsBXwWY+VNzBuzt8PFh2fpODnRXcM1cUr4xqukqo4+gF07j+whh4czxz5wW68u8A7yJQBeX14BfjaajUzWT35Nc2OzACVukYYamrhAhjKlEdy2NTcNESXrkG+/cNjNq0WWrEzeTWAfOl9em/qdP2VgFghBKpGHw/ENlN+GGtu+XBelfYdCGoH0NTtlH0Sl1K9ha01orH2f0SoldCgT4R1ulPqrdqH66DD44Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZXr/xfwtGaLnHAdpF4gvutHJLmKQF5O1koPNNh8PqOQ=;
 b=ZCUXe2ykOxDlvPpVOXPXFs2N3tdGjdwRM8kla3gpY1y2myUDak24Zpmcq6HhtovtrFA4a9bb3oYiKJOMM7YWzupL3nsGeqfx7Ilp3oQT1VjmgVHZLXqSLr2ZjPtAYe7PweIJ/Di8U/BqvjBPg+sqr6TBkSqky+aqKb4cebhey6rbKldiETAAjBo984VOQEeNsiEyYkhmTsSe+8h95cOhJ0HGdBxd87PKmbgPG5/x3R0axovTZzi4iv94v5dyliKuwtGCeqV05VcoRsiw9DcixS/kmQ68BS1/Zgy1UwW+RRVsHkpqO40le5v3jlNSa8Rk/h7TNynmb5Wc3NAc6CYTNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZXr/xfwtGaLnHAdpF4gvutHJLmKQF5O1koPNNh8PqOQ=;
 b=cU98HFUJdcCpcEQIsxlgX9kHREa9XiONkxb61u300jvqDOqPgGeuQKAznmcmaRw4qeLplN6r6zL89YC6TXFAoSwQ3PgLHqO2UET37lm0PLojYn1+bcH6kMw8Z3D+s0jDnx/XSbrXyHCZU5keqoUe3HVSum1lKymRkFeOBirrHQA=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ0PR11MB5151.namprd11.prod.outlook.com (2603:10b6:a03:2ac::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.25; Wed, 24 Nov
 2021 12:18:05 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4690.027; Wed, 24 Nov 2021
 12:18:05 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix NULL pointer
 dereference in i40e_dbg_dump_desc
Thread-Index: AQHX35RF1oIr8dRDR0i374izwOwzZawSm15A
Date: Wed, 24 Nov 2021 12:18:05 +0000
Message-ID: <BYAPR11MB33672C923A28FD009A98A4ECFC619@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211122112905.30552-1-mateusz.palczewski@intel.com>
In-Reply-To: <20211122112905.30552-1-mateusz.palczewski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60bc0283-d10a-4619-1e56-08d9af447812
x-ms-traffictypediagnostic: SJ0PR11MB5151:
x-microsoft-antispam-prvs: <SJ0PR11MB51519BDCCA086AD2DE1F0581FC619@SJ0PR11MB5151.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /67pL8biKNiXjKBUz8KPHmhjqkXQSmCDfg2gxUSk53jLmwX+WbeF3enHLJ+Er1kWqTdaMGWVSUGEN9VlvvgNDAEAjImbPGPdx6P0NsGjbd+7owLfbDE7UVHDtDOrF7qcYNnzICbmc4aRB3t1N69vRtnZ3+zGH7pho5pQKdb0fb/0dPjsVxDyXsuOp2uH+NvP8hLIMPcRbTsCLOHkazHFq1oat4ml/1EX8CHzq1Cxx282Kubt4Y50QBbyE5GV+BT1FYAOWi4mIirkvtPMkKapzLtvx/GNwM+/0vtWEVukNhJVTMPKrGvPV+b8h8QZaDi49BRxqWT7WFPM3g90dUm80f26eIO1xRD57/DR8sYTCnao48UskS7ErInESMkoQ69jT+Dhx3IrdzdbREePY9eq6V1yjzmQsUIBin+E9T67bOVr2NgmNH2iqH1df2bjGfneMYjZMMcNHu6h/JAXvcebMVKKQW4SIe3U5QZ0NsspqFIbtGtV69xSH/W20jLSCFlnLl2XMbsFxqZ2VZJXOfWIpuuLTsegre+XPWef4N8VXEKFAvEoyXFa9cQmGGHB8BL0Xt09SWuE9yg0O9+uoKySJEomRYQrzeNnkMRIrXAoD5k8egxNLZKK/dN6eWJqRjOuIF8kLwPQZ/KfqThKDMv8c8s2+Zol81Bv1SwYpGDkogdQfMZTUwosiZf62Wc2GOL5sytzEvwJfPLTOp2jSgVPEw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(55016003)(66446008)(66946007)(83380400001)(107886003)(82960400001)(38070700005)(71200400001)(9686003)(38100700002)(26005)(66476007)(66556008)(64756008)(76116006)(4744005)(8676002)(4326008)(8936002)(2906002)(6506007)(33656002)(86362001)(110136005)(508600001)(316002)(54906003)(122000001)(186003)(52536014)(7696005)(53546011)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EIVyGCV0cEmPCidtfBO34LICQ+VyALxndbsk3KTQUxAxr2mS7W4rHvmWcCP6?=
 =?us-ascii?Q?1t1ioDM7iAfKYNhp8DUWPBL2anbTZ+9XyHSoQcbvFzRdX3GFMEZhxKsOjfaT?=
 =?us-ascii?Q?y1lZGn9hwYLNsa4LziZpPQSwhzJx0UM74iM+5dMR3yx6iRmBhMG1pBrnclSw?=
 =?us-ascii?Q?di6cTbWDigq4gA9rQVDpOcJ4m0sPV4PQ/XJ+yTI0OQPiB3g8WaWWLEDrt2en?=
 =?us-ascii?Q?gD0S7YDAf5+5CnE/71IvqixhWknXzQtriEvXZzuIoRqCFbTlmK3IVXLF4hyM?=
 =?us-ascii?Q?pKd9Zxiv24dHMX40E6UMQWbcTipbtdAZOfpJKRgyt6GM0ECV9Zf6l+SQYUmp?=
 =?us-ascii?Q?ghYFRUIrkjMMPUXnbfmZ6L77mr21loJ/XDo6vPF8umkXfM1NVN7nqAvscf4j?=
 =?us-ascii?Q?c8LOEJj4mAg46FNPSjNFECMrrrvQYolh+9b9jUKKixjuo8+deJ2HYH2elPc5?=
 =?us-ascii?Q?kiifVwHp3gCSYJzwZag2DjGquEoIXOQJ/mTUX7+5ffFOmyPEY1yJ218PqDrm?=
 =?us-ascii?Q?JCqhsmCzyuPVFY1BUO3poJKwkSW99cYcP//F5hqn1JiWrTS516igBLDX3ZD7?=
 =?us-ascii?Q?4mHL3669sYEU8tfO4K2R4obvejLkton3rFoZztasTaKBBHYJYdbm6LqSnSY1?=
 =?us-ascii?Q?173hJF9dCw37KlYT8FvGr/xWRqyVLovYsC+Pcz8Hxot/OCPB55OlYQ/RgEv9?=
 =?us-ascii?Q?Myi/Kr2c5cK8XmgsEzBu6ON/hWS0S3bntsvsrfoirwpv3f0hmgy2z1LPeTP1?=
 =?us-ascii?Q?KwMES6OFOHPOWd4onUTEvIbcDuEkuECbvrYDTnQ17EHv3oCw2qzqkoK0Aocu?=
 =?us-ascii?Q?4SeQav8Gcp9WjYSVoM6+DcikzfDNkrF1/Dc2DWLUqPIYBK0KzY428yNuYqwu?=
 =?us-ascii?Q?mSc/DtUedBY6FPKJBpUOtKXH8yDOWPnjwn+U9h8jAUbycpsNTkteUHdXjOYl?=
 =?us-ascii?Q?3s4Sx5nkDrVoSEZiJ+TkvxnZKgkSkj4rIHpi4NPktNBfZrz8cnhogaTMTkyW?=
 =?us-ascii?Q?vqTd2z51XdYQCv68YMw19U3+sRmO/zJv+aJFEkb54X/KyeyjxnGHPq9wQzld?=
 =?us-ascii?Q?c7QMWBEVieHMOUEhbEkEo8S7mMqhijjEcUS3ARsw6T6MDDt4wpAyLg9mrRx5?=
 =?us-ascii?Q?6JqHiDrMyb6fzvJN6rUYP+wlGX141sGmeizQuLz3phcKaY+ohkFF2gUQk2NA?=
 =?us-ascii?Q?7B7CiMA32ElPAQxF4pcsBvwIkkh/olutkp7sCu+BWTTzdbZkHgdrYfubtiaX?=
 =?us-ascii?Q?nfqjYOLmgfSB+av4Ddl9FsaH5gfzQEPjrzzWrK6Jno80IFv7vPZwShJlwgCL?=
 =?us-ascii?Q?Xo31GtEAPQ0yoV1g2cz0JTU4JlV5JiKsrp0Be+yI2haWuYxgp2q8+fpYLx9f?=
 =?us-ascii?Q?NK3KHoxj+iWiCzL51w3J4siwIqQq+p63SHHMztDtXJpXENCJatHQnpbn6oP0?=
 =?us-ascii?Q?r7DcZkJOECf/aLnQQBiA5EB2XTZXuB3HztHkGQ+HY/U3Rjl/CTxdwLYApKfs?=
 =?us-ascii?Q?cbY9VUOyRQJOMOArNowvaxv5WQXVtxW7Mc9Pm3VQHg0psB1qsyZkUwnttObN?=
 =?us-ascii?Q?TvZAH9aeRs61kDfMtMmyFVNleUn5tD6/nBmeMnRe3+fZj7pmxWzZXR6bfhOv?=
 =?us-ascii?Q?7CbkPW2UCVg0nFmjQNbq68U=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60bc0283-d10a-4619-1e56-08d9af447812
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2021 12:18:05.5326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hnK3iVkxn2h9P7A2bcH+qeavMIw5Lh3PzBF/J4mY1t4asHL4bCEi10Gj1bmhouavmZ0CRAMMpHVe5P71xWW+2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5151
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix NULL pointer
 dereference in i40e_dbg_dump_desc
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Zulinski,
 NorbertX" <norbertx.zulinski@intel.com>, "Palczewski, 
 Mateusz" <mateusz.palczewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Monday, November 22, 2021 4:59 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>; Palczewski,
> Mateusz <mateusz.palczewski@intel.com>; Zulinski, NorbertX
> <norbertx.zulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix NULL pointer dereference in
> i40e_dbg_dump_desc
> 
> From: Norbert Zulinski <norbertx.zulinski@intel.com>
> 
> When trying to dump VFs VSI RX/TX descriptors using debugfs there was a crash
> due to NULL pointer dereference in i40e_dbg_dump_desc.
> Added a check to i40e_dbg_dump_desc that checks if VSI type is correct for
> dumping RX/TX descriptors.
> 
> Fixes: 02e9c290814c ("i40e: debugfs interface")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Added missing signed-off-by tag
> ---
>  drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
