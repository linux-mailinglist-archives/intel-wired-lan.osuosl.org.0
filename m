Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C7952EA1C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 May 2022 12:44:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96E0B425A4;
	Fri, 20 May 2022 10:44:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s-Meu6SoKajD; Fri, 20 May 2022 10:44:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C37C44259F;
	Fri, 20 May 2022 10:44:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0B5271BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 10:44:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECD48845DB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 10:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F9Yd22enudE1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 May 2022 10:43:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr00057.outbound.protection.outlook.com [40.107.0.57])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3FD51845B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 May 2022 10:43:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QDjrXlzeHOnze5EmspBKOLTp1BtL64EloM1gEbs9hZ0Q/zSprecFxRoVTHTd2tnvmrWiZ36zfGyDrgpdMKnMsW/enIUMT96qHDzVj8odPJ7lKXkth973lP+7jpHiOvFibMJbK6DB58OOauSLgUOZHQbZTsTK1wxoSPyKdPH+XyIJvv5EWD9h2OqHkv84yE7aujuhkHgsZ8MrrGqmDnFCaiPeRodu57HCv0XlWySsLscXNLly2K+Cjm8uGENLWH8DH/1b8aXLG+HQkt0fwNFMPSeCM2VK86hUE+OvzdifWWAh4s8Zi9EQ+LddC653VpVH0ixVnavf76na7472znX35Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbkxmMxmvkB9PE6VAL4ns0E3pTe9t27bhJYiw7oB41g=;
 b=dBRHApFY77oLyxLN5yGFl3Zz45mLxoFtJKj9mx6cCdR5gMBw35vyOKZPD0+Tcij/ymAZffWdpRP74Z5jRHNyDzPRJNKlvyuwmWwTboqYshkPjzdT/Gaip4SfbmOrboi4nua8UWo+lcO3VmVvXZKELh2uJzYTjFbpuWyaNegICHoc8kKU7RPNJl43PKWOJGgMi+UE9/jXllT4kTTSwSQ4wW+hhG6h40IyuPX3VMR2GnVSuwca+pkA2nT1YwLCMUbRExIcT7KFUtKrzArckx0DF33bx/L8WwHikR5pW/2VcJcXgpTGwqiQ2oCy7IUuu/5jPxT0HAHh0RKP8fcLPvug5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kbkxmMxmvkB9PE6VAL4ns0E3pTe9t27bhJYiw7oB41g=;
 b=RxeKm8+JN0PsC+azgh7GAGjrO7quvq9yDNi5yubMXHrC/ucyV3W9lEskABWR3T/8r15ioYAtrvmNoxSIRKVdn7R2YzbhAagInXuCpmc561mnqSoeJKyB07ag7GXpmHCJzb9rzdMUK/IbABq5sJLhl6CWzlO456eQEpiQ1212y9s=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM8PR04MB7729.eurprd04.prod.outlook.com (2603:10a6:20b:24c::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.17; Fri, 20 May
 2022 10:43:54 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5%5]) with mapi id 15.20.5250.014; Fri, 20 May 2022
 10:43:54 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Thread-Topic: [PATCH net-next v5 09/11] igc: Add support for Frame Preemption
 verification
Thread-Index: AQHYa+cvrq4+J7/M40C9l/AanXWKwK0nlTCA
Date: Fri, 20 May 2022 10:43:54 +0000
Message-ID: <20220520104353.dvtivs36lrsf26pb@skbuf>
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
 <20220520011538.1098888-10-vinicius.gomes@intel.com>
In-Reply-To: <20220520011538.1098888-10-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad0f9143-8898-46f4-635e-08da3a4da2e7
x-ms-traffictypediagnostic: AM8PR04MB7729:EE_
x-microsoft-antispam-prvs: <AM8PR04MB7729E5827D36C8A22B3EB305E0D39@AM8PR04MB7729.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BU73AIPe3PDOZ3beOgXj27rLus1OpzeqEGYngdtk+WmVWqK4ioTTYPBg2SxOIYQEZHb78Xmr+bjEuT+/Em2hklot3ZX8MyOOQEOtUwqpQALuC2e3tNaBHAiWf9ZpGslJrMCKKElzBBHQ/mVGzQzwI9gq5Mlzut5ClLSeZV72wIOD7/P+Sds77Ez7RxoWy5LyNClXstMZuyCsKnCB/1Kw33zH6jvO5dNN21moj3rd/aF5O5XvWJ6XJfAbJzxy0QUHGsmjjInX+dwF/GB0J6K8MltiQtsW6PnBkbfXd/itZg6DpJjtTxxOfsl6Y3LFUw7nDH1eccumOHwDoRnBMmZeg0tQGZ6dXL4jbJCKfo/tMaH4rn43P2T28ARRMeygVTTFT9XZkN/+zWWBRyhfIMBZW96/rMdgppuboHAYVHEDQrcAPljgwrQaogP5H0wn3HdRBvxPh/BDT4MucdUjjjXcXEg7qA7sqoYU7838IujFHBxrxNs8eqxSOacnRUTGpwKiGzjwEzugVRQfNcSRh7asPsPMN/8UK2ZyOPSblMp/LI+GrpM+ixSZsUOhHADtv4YRBjIuKrr/WC/zSx2J+wir751+H91GlMVLV9ddaB5PfsW2lsmVSIocA/Kcs9VSanVvjnJwyGnSlkORWRNRnwIeiaS/8Kc4U2rsjlLEejxBS+POPZ3yHRjOeJYMaL0RgWmQGN797JO9XQXJVrgUn2DrFQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(4636009)(366004)(33716001)(30864003)(44832011)(15650500001)(5660300002)(8936002)(66556008)(66476007)(66446008)(91956017)(8676002)(76116006)(66946007)(4326008)(64756008)(26005)(54906003)(6916009)(71200400001)(316002)(508600001)(2906002)(6506007)(6486002)(38070700005)(38100700002)(9686003)(86362001)(83380400001)(6512007)(122000001)(1076003)(186003)(579004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/jO9Do9YGnC3EFUFxBZGBd4vVona2ixEZINum9p6PerzafJ+1XeoAyCfJ8/h?=
 =?us-ascii?Q?IxEZZutwnetiPw9IMwnZ7sNpQNqeulaMs1UBMr008oAG/HXFlEdkk1xqi7CA?=
 =?us-ascii?Q?1Mac1WS/eiQneR8wiVgG4fgy1zFi4PAJNdBpAn5FuMDf2CKE6oqVDlAf2WdU?=
 =?us-ascii?Q?6uVI4oqHBmjfDcPeN4hzEXQv/dI0EopqZN7b2yySasLqzU3Bb+MvAnG7+PeX?=
 =?us-ascii?Q?3a1N/xrm1Syf9aMjSrEGhol+un/rE/Yx3jO2uZrTarNGKuYyQQGVf9WJ0BcU?=
 =?us-ascii?Q?s6qiDwZ74CTrmKnYXscl82GEIYDBy/CyDfq4SWopufr//Li6ycBHNXzZr/Cy?=
 =?us-ascii?Q?mHqClbHu1qNLEQcE99Lf6WEfgU6S6OXaQaLvMvEUs0KM0PrQPWGkSOoX0wCj?=
 =?us-ascii?Q?U940XinwzW/oVAlawxr8dAivs8huU2QwQsMpd5bRP/ihNoRH66GkxEGnI6ZL?=
 =?us-ascii?Q?0RHyqdRTuKOGvZErPWVcdGkC6cMPYirse5u2uzaInUaV2ob5Vl/30SE8J7PH?=
 =?us-ascii?Q?GYmm9eliByO8kZnXMUru2K9lkyrj/wAdo/9Wbw+bgg4Reib/OmWx7eQN+m+7?=
 =?us-ascii?Q?88tRQC0v7VhL6BH/3j0RhmU3rUPwj6q3xB8IEiBalaXu8ZQsbAY91FBx7tvs?=
 =?us-ascii?Q?sbEMxTmSmvGizYhhneCXWADoXtptVdFMEyKP4kYFEKeUOTC9c6uEA6yKvQs9?=
 =?us-ascii?Q?Fw0mCFlZma/T/wo5vwZRBzzqx9jvFzgONrGoCX8FlASaJ6t4EvCgDOQxQ3Nb?=
 =?us-ascii?Q?6+2sIfEygx5iGqpdQg5bSwz+VWNs6Y6OKAP5CVUrdC0dbu8t947HwLlAqz+c?=
 =?us-ascii?Q?f6Py96b2J5QmmhJ8mUv3buCQcfHQjfBs3BxFv9dVupZ9/W3X24a0gaQVal5L?=
 =?us-ascii?Q?6ejZD37Uh1tTgz0joQ6ivbQMMSsi/6/wT8IkY581mmbkCwiE9mEVTlLzCO1H?=
 =?us-ascii?Q?fj+yNBfDfa25+nSjUVZf8WOiTXkvQGPgFwCPOc+Y61av1kXyr15UxsLHk9bI?=
 =?us-ascii?Q?W1Mh0b//s6vZJvCVq3o767hVPPHQhD2Psz9k+ylq6Hi5Pb0exTN+UTxo1pU/?=
 =?us-ascii?Q?DMfMgimg2kFuG0V7yyfGMOusrxHgA9YmnK1w9b0o9+KmAWmaYAMikcMnO2dJ?=
 =?us-ascii?Q?7VNqz3MuaDHDZgY1gLPh0u1VporySUyoqIMBbh7XvmQ/mB0ID6br/szBCLOu?=
 =?us-ascii?Q?WMU2zzV7gfsrCAMk4kmGs/bwzLaiAlJYnKR+xLlPUIfM2V2+yhxVkSUhUtpA?=
 =?us-ascii?Q?oTkhJjlGgIpXTiVdJRtspNAoW+uIU4zNqCoRR/D0a362AIqZeqGxjh14Hcsu?=
 =?us-ascii?Q?XjTN6UFKhxMKfleZSF5itfb6oZh2k7ryUjiuQ5TvMq7q39VV6nZauWo3bmli?=
 =?us-ascii?Q?+1fIlpJlutrTNsNfUQvoaQ3gUk1ZZofArdpx0GvE6/vX/xiETwyvfe1BfIMP?=
 =?us-ascii?Q?B4WsR8MnLU/1R8Oipc5rkFf/jINMqh2RFE4jTurUVaUDbuJh4bXNvZ1U6/3N?=
 =?us-ascii?Q?SQQNhupYRdpgg2OJzvKom8ZzvMbQL9mbfVYR8SmyGekH9zJ14uktfBahbMl/?=
 =?us-ascii?Q?bnv0ZJZqcWGvS7+SQa8/2rG7lvyuRNqChM5QWEP0RpUevv2geVGaHBUgqUgR?=
 =?us-ascii?Q?diAuvgAIs5Kc01+XAv2W+/AIGKK1UKEY2dNNlIqjMzuV6WiStszRRHUydLnd?=
 =?us-ascii?Q?RySIF8ue2iFj6+qDEZ/MCoGN1jgHhy0kyEzRdvmWI7fZcHZfn4tkvXOjO9/3?=
 =?us-ascii?Q?lqi78SduyTjaKYy5aQwMV43rovIbPd0=3D?=
Content-ID: <926F9622491D284096B74B9290DC0C08@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad0f9143-8898-46f4-635e-08da3a4da2e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2022 10:43:54.5687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nPvrmbt0NVBw99/TDmFs60QRcGEcRcIenSLWu5hecR5ejNr5GqPjqJvQGOxSkg3IY9VrMoN4l6l935FwwFxHUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7729
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 09/11] igc: Add support
 for Frame Preemption verification
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "boon.leong.ong@intel.com" <boon.leong.ong@intel.com>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 19, 2022 at 06:15:36PM -0700, Vinicius Costa Gomes wrote:
> Add support for sending/receiving Frame Preemption verification
> frames.
> 
> The i225 hardware doesn't implement the process of verification
> internally, this is left to the driver.
> 
> Add a simple implementation of the state machine defined in IEEE
> 802.3-2018, Section 99.4.7.
> 
> For now, the state machine is started manually by the user, when
> enabling verification. Example:
> 
> $ ethtool --set-frame-preemption IFACE disable-verify off
> 
> The "verified" condition is set to true when the SMD-V frame is sent,
> and the SMD-R frame is received. So, it only tracks the transmission
> side. This seems to be what's expected from IEEE 802.3-2018.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  16 ++
>  drivers/net/ethernet/intel/igc/igc_defines.h |  13 +
>  drivers/net/ethernet/intel/igc/igc_ethtool.c |  37 ++-
>  drivers/net/ethernet/intel/igc/igc_main.c    | 243 +++++++++++++++++++
>  4 files changed, 307 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
> index 11da66bd9c2c..be4a8362d6d7 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -131,6 +131,13 @@ struct igc_ring {
>  	struct xsk_buff_pool *xsk_pool;
>  } ____cacheline_internodealigned_in_smp;
>  
> +enum frame_preemption_state {
> +	FRAME_PREEMPTION_STATE_FAILED,
> +	FRAME_PREEMPTION_STATE_DONE,
> +	FRAME_PREEMPTION_STATE_START,
> +	FRAME_PREEMPTION_STATE_SENT,
> +};
> +
>  /* Board specific private data structure */
>  struct igc_adapter {
>  	struct net_device *netdev;
> @@ -184,6 +191,7 @@ struct igc_adapter {
>  	ktime_t base_time;
>  	ktime_t cycle_time;
>  	bool frame_preemption_active;
> +	bool frame_preemption_requested;
>  	u32 add_frag_size;
>  
>  	/* OS defined structs */
> @@ -250,6 +258,14 @@ struct igc_adapter {
>  		struct timespec64 start;
>  		struct timespec64 period;
>  	} perout[IGC_N_PEROUT];
> +
> +	struct delayed_work fp_verification_work;
> +	unsigned long fp_start;
> +	bool fp_received_smd_v;
> +	bool fp_received_smd_r;
> +	unsigned int fp_verify_cnt;
> +	enum frame_preemption_state fp_tx_state;
> +	bool fp_disable_verify;
>  };
>  
>  void igc_up(struct igc_adapter *adapter);
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 68faca584e34..63fc76a0b72a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -307,6 +307,8 @@
>  #define IGC_TXD_DTYP_C		0x00000000 /* Context Descriptor */
>  #define IGC_TXD_POPTS_IXSM	0x01       /* Insert IP checksum */
>  #define IGC_TXD_POPTS_TXSM	0x02       /* Insert TCP/UDP checksum */
> +#define IGC_TXD_POPTS_SMD_V	0x10       /* Transmitted packet is a SMD-Verify */
> +#define IGC_TXD_POPTS_SMD_R	0x20       /* Transmitted packet is a SMD-Response */
>  #define IGC_TXD_CMD_EOP		0x01000000 /* End of Packet */
>  #define IGC_TXD_CMD_IC		0x04000000 /* Insert Checksum */
>  #define IGC_TXD_CMD_DEXT	0x20000000 /* Desc extension (0 = legacy) */
> @@ -366,9 +368,20 @@
>  
>  #define IGC_RXDEXT_STATERR_LB	0x00040000
>  
> +#define IGC_RXD_STAT_SMD_V	0x2000  /* Received packet is SMD-Verify packet */
> +#define IGC_RXD_STAT_SMD_R	0x4000  /* Received packet is SMD-Response packet */
> +
>  /* Advanced Receive Descriptor bit definitions */
>  #define IGC_RXDADV_STAT_TSIP	0x08000 /* timestamp in packet */
>  
> +#define IGC_RXDADV_STAT_SMD_TYPE_MASK	0x06000
> +#define IGC_RXDADV_STAT_SMD_TYPE_SHIFT	13
> +
> +#define IGC_SMD_TYPE_SFD		0x0
> +#define IGC_SMD_TYPE_SMD_V		0x1
> +#define IGC_SMD_TYPE_SMD_R		0x2
> +#define IGC_SMD_TYPE_COMPLETE		0x3
> +
>  #define IGC_RXDEXT_STATERR_L4E		0x20000000
>  #define IGC_RXDEXT_STATERR_IPE		0x40000000
>  #define IGC_RXDEXT_STATERR_RXE		0x80000000
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 401d2cdb3e81..9a80e2569dc3 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1680,6 +1680,8 @@ static int igc_ethtool_get_preempt(struct net_device *netdev,
>  
>  	fpcmd->enabled = adapter->frame_preemption_active;
>  	fpcmd->add_frag_size = adapter->add_frag_size;
> +	fpcmd->verified = adapter->fp_tx_state == FRAME_PREEMPTION_STATE_DONE;
> +	fpcmd->disable_verify = adapter->fp_disable_verify;
>  
>  	for (i = 0; i < adapter->num_tx_queues; i++) {
>  		struct igc_ring *ring = adapter->tx_ring[i];
> @@ -1698,6 +1700,7 @@ static int igc_ethtool_set_preempt(struct net_device *netdev,
>  				   struct netlink_ext_ack *extack)
>  {
>  	struct igc_adapter *adapter = netdev_priv(netdev);
> +	bool verified = false, mask_changed = false;

"verified" is assigned unconditionally below, no need to initialize it to false.

>  	u32 mask;
>  	int i;
>  
> @@ -1706,17 +1709,47 @@ static int igc_ethtool_set_preempt(struct net_device *netdev,
>  		return -EINVAL;
>  	}
>  
> -	adapter->frame_preemption_active = fpcmd->enabled;
> +	adapter->frame_preemption_requested = fpcmd->enabled;
>  	adapter->add_frag_size = fpcmd->add_frag_size;
>  	mask = fpcmd->preemptible_mask;
>  
>  	for (i = 0; i < adapter->num_tx_queues; i++) {
>  		struct igc_ring *ring = adapter->tx_ring[i];
> +		bool preemptible = mask & BIT(i);
> +
> +		if (ring->preemptible != preemptible)
> +			mask_changed = true;
>  
>  		ring->preemptible = (mask & BIT(i));
>  	}
>  
> -	return igc_tsn_offload_apply(adapter);
> +	if (!fpcmd->disable_verify && adapter->fp_disable_verify) {
> +		adapter->fp_tx_state = FRAME_PREEMPTION_STATE_START;
> +		schedule_delayed_work(&adapter->fp_verification_work,
> +				      msecs_to_jiffies(10));
> +	}
> +
> +	adapter->fp_disable_verify = fpcmd->disable_verify;

This races with the first check in the fp_verification_work, so it may
see an old fp_disable_verify value.

> +
> +	verified = adapter->fp_tx_state == FRAME_PREEMPTION_STATE_DONE;
> +
> +	/* If the verification was not done, we want to enable frame
> +	 * preemption and we have not finished it, wait for it to
> +	 * finish.
> +	 */
> +	if (!verified && !adapter->fp_disable_verify && adapter->frame_preemption_requested)
> +		return 0;

This is a bit hard to follow, sorry if I am misunderstanding something.
But in principle, you exit early if preemption is enabled (requested),
verification is enabled, and verification isn't complete.

So you proceed on the negated condition, i.e. preemption is disabled, or
verification is disabled, or verification is complete. Is the last
condition what you want? You race with the schedule_delayed_work()
above, and verification may become complete, case in which you go ahead
to the next check. Intuitively, this code block right here should only
deal with the case where we don't have verification enabled, but the
checks allow other conditions to pass.

So the next check here, right below:

	if (adapter->frame_preemption_active != adapter->frame_preemption_requested ||

races with the verify state machine doing this:

1			adapter->fp_tx_state = FRAME_PREEMPTION_STATE_DONE;
2			adapter->fp_received_smd_r = false;
3
4			if (adapter->frame_preemption_requested) {
5				adapter->frame_preemption_active = true;
6				igc_tsn_offload_apply(adapter);
7			}

Because "verified == true" makes us run further, this only means that line 1
above has already executed in the state machine. But it doesn't mean
that lines 2...5 have executed. If the state machine kthread is
preempted too between lines 1 and 5, then both igc_ethtool_set_preempt()
and igc_fp_verification_work() will end up calling igc_tsn_offload_apply().

Have you considered just introducing a DISABLED state in your verify
state machine, and handling that case in the delayed work as well, to
reduce the potential for races?

> +
> +	if (adapter->frame_preemption_active != adapter->frame_preemption_requested ||
> +	    adapter->add_frag_size != fpcmd->add_frag_size ||

To save some line space, could you perhaps rename "frame_preemption_" to "fp_"?

> +	    mask_changed) {
> +		adapter->frame_preemption_active = adapter->frame_preemption_requested;
> +		adapter->add_frag_size = fpcmd->add_frag_size;
> +
> +		return igc_tsn_offload_apply(adapter);
> +	}
> +
> +	return 0;
>  }
>  
>  static int igc_ethtool_begin(struct net_device *netdev)
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 5dd7140bac82..69e96e9a3ec8 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -30,6 +30,11 @@
>  #define IGC_XDP_TX		BIT(1)
>  #define IGC_XDP_REDIRECT	BIT(2)
>  
> +#define IGC_FP_TIMEOUT msecs_to_jiffies(100)
> +#define IGC_MAX_VERIFY_CNT 3
> +
> +#define IGC_FP_SMD_FRAME_SIZE 60
> +
>  static int debug = -1;
>  
>  MODULE_AUTHOR("Intel Corporation, <linux.nics@intel.com>");
> @@ -2190,6 +2195,79 @@ static int igc_xdp_init_tx_descriptor(struct igc_ring *ring,
>  	return 0;
>  }
>  
> +static int igc_fp_init_smd_frame(struct igc_ring *ring, struct igc_tx_buffer *buffer,
> +				 struct sk_buff *skb)
> +{
> +	dma_addr_t dma;
> +	unsigned int size;

Variable ordering longest to shortest please. Also, "size" could be initialized inline.

> +
> +	size = skb_headlen(skb);

I think alloc_skb() doesn't create nonlinear skbs, only alloc_skb_with_frags(),
so this could be skb->len.

> +
> +	dma = dma_map_single(ring->dev, skb->data, size, DMA_TO_DEVICE);
> +	if (dma_mapping_error(ring->dev, dma)) {
> +		netdev_err_once(ring->netdev, "Failed to map DMA for TX\n");
> +		return -ENOMEM;
> +	}
> +
> +	buffer->skb = skb;
> +	buffer->protocol = 0;
> +	buffer->bytecount = skb->len;
> +	buffer->gso_segs = 1;
> +	buffer->time_stamp = jiffies;
> +	dma_unmap_len_set(buffer, len, skb->len);

And then use "size" here and in buffer->bytecount.

> +	dma_unmap_addr_set(buffer, dma, dma);
> +
> +	return 0;
> +}
> +
> +static int igc_fp_init_tx_descriptor(struct igc_ring *ring,
> +				     struct sk_buff *skb, int type)
> +{
> +	struct igc_tx_buffer *buffer;
> +	union igc_adv_tx_desc *desc;
> +	u32 cmd_type, olinfo_status;
> +	int err;
> +
> +	if (!igc_desc_unused(ring))
> +		return -EBUSY;
> +
> +	buffer = &ring->tx_buffer_info[ring->next_to_use];
> +	err = igc_fp_init_smd_frame(ring, buffer, skb);
> +	if (err)
> +		return err;
> +
> +	cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
> +		   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
> +		   buffer->bytecount;
> +	olinfo_status = buffer->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
> +
> +	switch (type) {
> +	case IGC_SMD_TYPE_SMD_V:
> +		olinfo_status |= (IGC_TXD_POPTS_SMD_V << 8);
> +		break;
> +	case IGC_SMD_TYPE_SMD_R:
> +		olinfo_status |= (IGC_TXD_POPTS_SMD_R << 8);
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	desc = IGC_TX_DESC(ring, ring->next_to_use);
> +	desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> +	desc->read.olinfo_status = cpu_to_le32(olinfo_status);
> +	desc->read.buffer_addr = cpu_to_le64(dma_unmap_addr(buffer, dma));
> +
> +	netdev_tx_sent_queue(txring_txq(ring), skb->len);
> +
> +	buffer->next_to_watch = desc;
> +
> +	ring->next_to_use++;
> +	if (ring->next_to_use == ring->count)
> +		ring->next_to_use = 0;
> +
> +	return 0;
> +}
> +
>  static struct igc_ring *igc_xdp_get_tx_ring(struct igc_adapter *adapter,
>  					    int cpu)
>  {
> @@ -2317,6 +2395,43 @@ static void igc_update_rx_stats(struct igc_q_vector *q_vector,
>  	q_vector->rx.total_bytes += bytes;
>  }
>  
> +static int igc_rx_desc_smd_type(union igc_adv_rx_desc *rx_desc)
> +{
> +	u32 status = le32_to_cpu(rx_desc->wb.upper.status_error);
> +
> +	return (status & IGC_RXDADV_STAT_SMD_TYPE_MASK)
> +		>> IGC_RXDADV_STAT_SMD_TYPE_SHIFT;
> +}
> +
> +static bool igc_check_smd_frame(void *pktbuf, unsigned int size)
> +{
> +#if defined(CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS)
> +	const u32 *b;
> +#else
> +	const u16 *b;
> +#endif
> +	int i;
> +
> +	if (size != 60)
> +		return false;
> +
> +	/* The SMD frames (V and R) have the preamble, the SMD tag, 60
> +	 * octects of zeroes and the mCRC. At this point the hardware

Typo: octets

> +	 * already discarded most of that, so we only need to check
> +	 * the "contents" of the frame.
> +	 */
> +	b = pktbuf;
> +	for (i = 16 / sizeof(*b); i < size / sizeof(*b); i++)
> +		/* FIXME: i226 seems to insert some garbage
> +		 * (timestamps?) in SMD frames, ignore the first 16
> +		 * bytes (4 words). Investigate better.
> +		 */
> +		if (b[i] != 0)
> +			return false;
> +
> +	return true;
> +}

I admit I'm not really following the clean_rx procedure. But do you call
igc_put_rx_buffer() for SMD frames, i.e. are you DMA unmapping the
buffer before you look at it? It seems like you have the "smd" check too
early. If you enable CONFIG_DMA_API_DEBUG, does it say anything?

> +
>  static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  {
>  	unsigned int total_bytes = 0, total_packets = 0;
> @@ -2333,6 +2448,7 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  		ktime_t timestamp = 0;
>  		struct xdp_buff xdp;
>  		int pkt_offset = 0;
> +		int smd_type;
>  		void *pktbuf;
>  
>  		/* return some buffers to hardware, one at a time is too slow */
> @@ -2364,6 +2480,22 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
>  			size -= IGC_TS_HDR_LEN;
>  		}
>  
> +		smd_type = igc_rx_desc_smd_type(rx_desc);
> +
> +		if (unlikely(smd_type == IGC_SMD_TYPE_SMD_V || smd_type == IGC_SMD_TYPE_SMD_R)) {
> +			if (igc_check_smd_frame(pktbuf, size)) {
> +				adapter->fp_received_smd_v = smd_type == IGC_SMD_TYPE_SMD_V;
> +				adapter->fp_received_smd_r = smd_type == IGC_SMD_TYPE_SMD_R;
> +				schedule_delayed_work(&adapter->fp_verification_work, 0);
> +			}
> +
> +			/* Advance the ring next-to-clean */
> +			igc_is_non_eop(rx_ring, rx_desc);
> +
> +			cleaned_count++;
> +			continue;
> +		}
> +
>  		if (!skb) {
>  			xdp_init_buff(&xdp, truesize, &rx_ring->xdp_rxq);
>  			xdp_prepare_buff(&xdp, pktbuf - igc_rx_offset(rx_ring),
> @@ -6003,6 +6135,116 @@ static int igc_tsn_enable_cbs(struct igc_adapter *adapter,
>  	return igc_tsn_offload_apply(adapter);
>  }
>  
> +/* I225 doesn't send the SMD frames automatically, we need to handle
> + * them ourselves.
> + */
> +static int igc_xmit_smd_frame(struct igc_adapter *adapter, int type)
> +{
> +	int cpu = smp_processor_id();
> +	struct netdev_queue *nq;
> +	struct igc_ring *ring;
> +	struct sk_buff *skb;
> +	void *data;
> +	int err;
> +
> +	if (!netif_running(adapter->netdev))
> +		return -ENOTCONN;
> +
> +	/* FIXME: rename this function to something less specific, as
> +	 * it can be used outside XDP.
> +	 */
> +	ring = igc_xdp_get_tx_ring(adapter, cpu);
> +	nq = txring_txq(ring);
> +
> +	skb = alloc_skb(IGC_FP_SMD_FRAME_SIZE, GFP_KERNEL);
> +	if (!skb)
> +		return -ENOMEM;
> +
> +	data = skb_put(skb, IGC_FP_SMD_FRAME_SIZE);
> +	memset(data, 0, IGC_FP_SMD_FRAME_SIZE);
> +
> +	__netif_tx_lock_bh(nq);
> +
> +	err = igc_fp_init_tx_descriptor(ring, skb, type);
> +
> +	igc_flush_tx_descriptors(ring);
> +
> +	__netif_tx_unlock_bh(nq);
> +
> +	return err;
> +}
> +
> +static void igc_fp_verification_work(struct work_struct *work)
> +{
> +	struct delayed_work *dwork = to_delayed_work(work);
> +	struct igc_adapter *adapter;
> +	int err;
> +
> +	adapter = container_of(dwork, struct igc_adapter, fp_verification_work);
> +
> +	if (adapter->fp_disable_verify)
> +		goto done;
> +
> +	switch (adapter->fp_tx_state) {
> +	case FRAME_PREEMPTION_STATE_START:
> +		adapter->fp_received_smd_r = false;
> +		err = igc_xmit_smd_frame(adapter, IGC_SMD_TYPE_SMD_V);
> +		if (err < 0)
> +			netdev_err(adapter->netdev, "Error sending SMD-V frame\n");
> +
> +		adapter->fp_tx_state = FRAME_PREEMPTION_STATE_SENT;
> +		adapter->fp_start = jiffies;
> +		schedule_delayed_work(&adapter->fp_verification_work, IGC_FP_TIMEOUT);
> +		break;
> +
> +	case FRAME_PREEMPTION_STATE_SENT:
> +		if (adapter->fp_received_smd_r) {
> +			/* Verifcation has finished successfully, we

Typo: verification

> +			 * can enable frame preemption in the hw now
> +			 */
> +			adapter->fp_tx_state = FRAME_PREEMPTION_STATE_DONE;
> +			adapter->fp_received_smd_r = false;
> +
> +			if (adapter->frame_preemption_requested) {
> +				adapter->frame_preemption_active = true;

Maybe WRITE_ONCE(adapter->fp_active, true) here, and READ_ONCE
everywhere else, so annotate lockless accesses?

> +				igc_tsn_offload_apply(adapter);
> +			}
> +
> +			break;
> +		}
> +
> +		if (time_is_before_jiffies(adapter->fp_start + IGC_FP_TIMEOUT)) {
> +			adapter->fp_verify_cnt++;
> +			netdev_warn(adapter->netdev, "Timeout waiting for SMD-R frame\n");
> +
> +			if (adapter->fp_verify_cnt > IGC_MAX_VERIFY_CNT) {
> +				adapter->fp_verify_cnt = 0;
> +				adapter->fp_tx_state = FRAME_PREEMPTION_STATE_FAILED;
> +				netdev_err(adapter->netdev,
> +					   "Exceeded number of attempts for frame preemption verification\n");
> +			} else {
> +				adapter->fp_tx_state = FRAME_PREEMPTION_STATE_START;
> +			}
> +			schedule_delayed_work(&adapter->fp_verification_work, IGC_FP_TIMEOUT);
> +		}
> +
> +		break;
> +
> +	case FRAME_PREEMPTION_STATE_FAILED:
> +	case FRAME_PREEMPTION_STATE_DONE:
> +		break;
> +	}
> +
> +done:
> +	if (adapter->fp_received_smd_v) {
> +		err = igc_xmit_smd_frame(adapter, IGC_SMD_TYPE_SMD_R);
> +		if (err < 0)
> +			netdev_err(adapter->netdev, "Error sending SMD-R frame\n");
> +
> +		adapter->fp_received_smd_v = false;
> +	}
> +}
> +
>  static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
>  			void *type_data)
>  {
> @@ -6369,6 +6611,7 @@ static int igc_probe(struct pci_dev *pdev,
>  
>  	INIT_WORK(&adapter->reset_task, igc_reset_task);
>  	INIT_WORK(&adapter->watchdog_task, igc_watchdog_task);
> +	INIT_DELAYED_WORK(&adapter->fp_verification_work, igc_fp_verification_work);
>  
>  	/* Initialize link properties that are user-changeable */
>  	adapter->fc_autoneg = true;
> -- 
> 2.35.3
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
