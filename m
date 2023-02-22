Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF23C6A0CF0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Feb 2023 16:30:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56CD361AEF;
	Thu, 23 Feb 2023 15:30:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56CD361AEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677166253;
	bh=E3N6X4garalJR+zP5gcQZ8iyLJFBoObgPrLcy4c+soQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=qfWmDb+x2oKccb2844Odd4+Mv9KO1mdCX5pV3KR01M8LiYIhbnWyA+faRz4aBPend
	 rkKa9em5vi/Kdf3oj2tKKdeOCIkCfSSb4O+h7Tia4HNDv2p82YLbsgb1TH8Hg6i/k4
	 kUTa7WhH3A55nN77FRh15J3fH1l75m5XC9+VItBAf5w0/I3MpWaEIBhYnqKQSCYWXr
	 Ea/vGzi6fdtrNopQqa3wUeDQGXQIG2w/LjQr8ByrzK9pRtqJuAqMoieTTsmOOu8Ox4
	 BDtQ5H9tmEEHbLxiyo/Vo71GP3fSGGo7WrBuqnL2DNyRJVhEQtrxKpmuv2R+HvTnxG
	 vwSTGXw8tiOUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d1UcFUhiy00V; Thu, 23 Feb 2023 15:30:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2726B61AE8;
	Thu, 23 Feb 2023 15:30:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2726B61AE8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 728A61BF2B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 04:56:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E6234040D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 04:56:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E6234040D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rv8-PU8zYO6a for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Feb 2023 04:56:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5804540141
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5804540141
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Feb 2023 04:56:54 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 p3-20020a05600c358300b003e206711347so7061739wmq.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 20:56:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vkRea1OtJ332rpptxmGDY57GsDoIuyEvBO08rz2XceU=;
 b=vxbOYQTQioEhZD0sA2ZGIu2clcIYjubeyPWlCe01lbdTxbmqaou8HNFqrzcmvt6RzM
 ukSjBWmeyQLaR/GPj7mSLq6A57ieJJz6FpCYw2ktoT/nW7sltL28BgWua25C9tizbypJ
 vt+kL/6zS2Y3K4VPF316kXSiz8RKTf2EfsFEtmWUF8jCPSHHLTbcYlAnBD7hhKrSsvTA
 GErlhZoPi2bEJ7y1gE3PC7Dw4xC87QpG7pgUclv01kTOYR/JzxTMQuahfvecnwO4wCxG
 cXCNwHWylkXU3EiRKO0zZFLwJLjInMQdYa3CzVicPn1J/p8u50nOdw7CFg0T7wiBGZjY
 q3lg==
X-Gm-Message-State: AO0yUKXmI1TrENeIt0ckLauZzztAsqegO3/IRWu96azR4OVb+GB+ab0e
 XJ64Y+TX+9su4chQop04e6Q=
X-Google-Smtp-Source: AK7set9LrxnrV6hRluSPXZPPw25LyulqagUkfMGc8GDTt1IljGQU2LP0skofKzFDTDpyRm4syPMQ4Q==
X-Received: by 2002:a05:600c:714:b0:3e2:1368:e3a0 with SMTP id
 i20-20020a05600c071400b003e21368e3a0mr5965176wmn.18.1677128212396; 
 Wed, 22 Feb 2023 20:56:52 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 w18-20020a05600c475200b003e220998b6bsm11432573wmo.17.2023.02.22.20.56.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Feb 2023 20:56:52 -0800 (PST)
Date: Wed, 22 Feb 2023 10:49:41 +0300
From: Dan Carpenter <error27@gmail.com>
To: maciej.fijalkowski@intel.com
Message-ID: <Y/XJFXjvj4SRgny6@kili>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Approved-At: Thu, 23 Feb 2023 15:30:47 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=vkRea1OtJ332rpptxmGDY57GsDoIuyEvBO08rz2XceU=;
 b=dc9+3cmPqHsbtFNwbR7yMoei3oATFVpeb5Ai4sW5jCsoO6nh3vt0NhT4rNmKl1Gm0L
 gl3qJL00gQ26PsHglsSdvyL5/hUbHyRnw221YhBy0nIjmeqW5KV7B8/7P7Lgbl7Fyn20
 /rS+tlyYK2G3x5pIkKDxm0/Jkn9b1P1bELJkEdu+0zdwLdst0Rn0HePio/QZbU9bm2NZ
 mV3ka8IxNcCjpNWpUphfkQ/AtnqxVsDyBPgfEb2EKmZYf0m8cfdaWMhhw+nAQPKOp2v8
 jISMUlln7uJHfR1aPXRNc66SFUeSQUDjWGi6V1fMp+T0ZLtuiJaky/hRNA2V/c41VrLP
 uqEw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=dc9+3cmP
Subject: [Intel-wired-lan] [bug report] ice: Add support for XDP
 multi-buffer on Tx side
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Maciej Fijalkowski,

The patch 3246a10752a7: "ice: Add support for XDP multi-buffer on Tx
side" from Jan 31, 2023, leads to the following Smatch static checker
warning:

	drivers/net/ethernet/intel/ice/ice_txrx.c:1323 ice_clean_rx_irq()
	error: uninitialized symbol 'cached_ntu'.

drivers/net/ethernet/intel/ice/ice_txrx.c
    1150 int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
    1151 {
    1152         unsigned int total_rx_bytes = 0, total_rx_pkts = 0;
    1153         unsigned int offset = rx_ring->rx_offset;
    1154         struct xdp_buff *xdp = &rx_ring->xdp;
    1155         struct ice_tx_ring *xdp_ring = NULL;
    1156         struct bpf_prog *xdp_prog = NULL;
    1157         u32 ntc = rx_ring->next_to_clean;
    1158         u32 cnt = rx_ring->count;
    1159         u32 cached_ntc = ntc;
    1160         u32 xdp_xmit = 0;
    1161         u32 cached_ntu;
    1162         bool failure;
    1163         u32 first;
    1164 
    1165         /* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
    1166 #if (PAGE_SIZE < 8192)
    1167         xdp->frame_sz = ice_rx_frame_truesize(rx_ring, 0);
    1168 #endif
    1169 
    1170         xdp_prog = READ_ONCE(rx_ring->xdp_prog);
    1171         if (xdp_prog) {
    1172                 xdp_ring = rx_ring->xdp_ring;
    1173                 cached_ntu = xdp_ring->next_to_use;
    1174         }

cached_ntu not initialized on else path.

    1175 
    1176         /* start the loop to process Rx packets bounded by 'budget' */
    1177         while (likely(total_rx_pkts < (unsigned int)budget)) {
    1178                 union ice_32b_rx_flex_desc *rx_desc;
    1179                 struct ice_rx_buf *rx_buf;
    1180                 struct sk_buff *skb;
    1181                 unsigned int size;
    1182                 u16 stat_err_bits;
    1183                 u16 vlan_tag = 0;
    1184                 u16 rx_ptype;
    1185 
    1186                 /* get the Rx desc from Rx ring based on 'next_to_clean' */
    1187                 rx_desc = ICE_RX_DESC(rx_ring, ntc);
    1188 
    1189                 /* status_error_len will always be zero for unused descriptors
    1190                  * because it's cleared in cleanup, and overlaps with hdr_addr
    1191                  * which is always zero because packet split isn't used, if the
    1192                  * hardware wrote DD then it will be non-zero
    1193                  */
    1194                 stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_DD_S);
    1195                 if (!ice_test_staterr(rx_desc->wb.status_error0, stat_err_bits))
    1196                         break;
    1197 
    1198                 /* This memory barrier is needed to keep us from reading
    1199                  * any other fields out of the rx_desc until we know the
    1200                  * DD bit is set.
    1201                  */
    1202                 dma_rmb();
    1203 
    1204                 ice_trace(clean_rx_irq, rx_ring, rx_desc);
    1205                 if (rx_desc->wb.rxdid == FDIR_DESC_RXDID || !rx_ring->netdev) {
    1206                         struct ice_vsi *ctrl_vsi = rx_ring->vsi;
    1207 
    1208                         if (rx_desc->wb.rxdid == FDIR_DESC_RXDID &&
    1209                             ctrl_vsi->vf)
    1210                                 ice_vc_fdir_irq_handler(ctrl_vsi, rx_desc);
    1211                         if (++ntc == cnt)
    1212                                 ntc = 0;
    1213                         continue;
    1214                 }
    1215 
    1216                 size = le16_to_cpu(rx_desc->wb.pkt_len) &
    1217                         ICE_RX_FLX_DESC_PKT_LEN_M;
    1218 
    1219                 /* retrieve a buffer from the ring */
    1220                 rx_buf = ice_get_rx_buf(rx_ring, size, ntc);
    1221 
    1222                 if (!xdp->data) {
    1223                         void *hard_start;
    1224 
    1225                         hard_start = page_address(rx_buf->page) + rx_buf->page_offset -
    1226                                      offset;
    1227                         xdp_prepare_buff(xdp, hard_start, offset, size, !!offset);
    1228 #if (PAGE_SIZE > 4096)
    1229                         /* At larger PAGE_SIZE, frame_sz depend on len size */
    1230                         xdp->frame_sz = ice_rx_frame_truesize(rx_ring, size);
    1231 #endif
    1232                         xdp_buff_clear_frags_flag(xdp);
    1233                 } else if (ice_add_xdp_frag(rx_ring, xdp, rx_buf, size)) {
    1234                         break;
    1235                 }
    1236                 if (++ntc == cnt)
    1237                         ntc = 0;
    1238 
    1239                 /* skip if it is NOP desc */
    1240                 if (ice_is_non_eop(rx_ring, rx_desc))
    1241                         continue;
    1242 
    1243                 ice_run_xdp(rx_ring, xdp, xdp_prog, xdp_ring, rx_buf);
    1244                 if (rx_buf->act == ICE_XDP_PASS)
    1245                         goto construct_skb;
    1246                 total_rx_bytes += xdp_get_buff_len(xdp);
    1247                 total_rx_pkts++;
    1248 
    1249                 xdp->data = NULL;
    1250                 rx_ring->first_desc = ntc;
    1251                 continue;
    1252 construct_skb:
    1253                 if (likely(ice_ring_uses_build_skb(rx_ring)))
    1254                         skb = ice_build_skb(rx_ring, xdp);
    1255                 else
    1256                         skb = ice_construct_skb(rx_ring, xdp);
    1257                 /* exit if we failed to retrieve a buffer */
    1258                 if (!skb) {
    1259                         rx_ring->ring_stats->rx_stats.alloc_page_failed++;
    1260                         rx_buf->act = ICE_XDP_CONSUMED;
    1261                         if (unlikely(xdp_buff_has_frags(xdp)))
    1262                                 ice_set_rx_bufs_act(xdp, rx_ring,
    1263                                                     ICE_XDP_CONSUMED);
    1264                         xdp->data = NULL;
    1265                         rx_ring->first_desc = ntc;
    1266                         break;
    1267                 }
    1268                 xdp->data = NULL;
    1269                 rx_ring->first_desc = ntc;
    1270 
    1271                 stat_err_bits = BIT(ICE_RX_FLEX_DESC_STATUS0_RXE_S);
    1272                 if (unlikely(ice_test_staterr(rx_desc->wb.status_error0,
    1273                                               stat_err_bits))) {
    1274                         dev_kfree_skb_any(skb);
    1275                         continue;
    1276                 }
    1277 
    1278                 vlan_tag = ice_get_vlan_tag_from_rx_desc(rx_desc);
    1279 
    1280                 /* pad the skb if needed, to make a valid ethernet frame */
    1281                 if (eth_skb_pad(skb))
    1282                         continue;
    1283 
    1284                 /* probably a little skewed due to removing CRC */
    1285                 total_rx_bytes += skb->len;
    1286 
    1287                 /* populate checksum, VLAN, and protocol */
    1288                 rx_ptype = le16_to_cpu(rx_desc->wb.ptype_flex_flags0) &
    1289                         ICE_RX_FLEX_DESC_PTYPE_M;
    1290 
    1291                 ice_process_skb_fields(rx_ring, rx_desc, skb, rx_ptype);
    1292 
    1293                 ice_trace(clean_rx_irq_indicate, rx_ring, rx_desc, skb);
    1294                 /* send completed skb up the stack */
    1295                 ice_receive_skb(rx_ring, skb, vlan_tag);
    1296 
    1297                 /* update budget accounting */
    1298                 total_rx_pkts++;
    1299         }
    1300 
    1301         first = rx_ring->first_desc;
    1302         while (cached_ntc != first) {
    1303                 struct ice_rx_buf *buf = &rx_ring->rx_buf[cached_ntc];
    1304 
    1305                 if (buf->act & (ICE_XDP_TX | ICE_XDP_REDIR)) {
    1306                         ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
    1307                         xdp_xmit |= buf->act;
    1308                 } else if (buf->act & ICE_XDP_CONSUMED) {
    1309                         buf->pagecnt_bias++;
    1310                 } else if (buf->act == ICE_XDP_PASS) {
    1311                         ice_rx_buf_adjust_pg_offset(buf, xdp->frame_sz);
    1312                 }
    1313 
    1314                 ice_put_rx_buf(rx_ring, buf);
    1315                 if (++cached_ntc >= cnt)
    1316                         cached_ntc = 0;
    1317         }
    1318         rx_ring->next_to_clean = ntc;
    1319         /* return up to cleaned_count buffers to hardware */
    1320         failure = ice_alloc_rx_bufs(rx_ring, ICE_RX_DESC_UNUSED(rx_ring));
    1321 
    1322         if (xdp_xmit)
--> 1323                 ice_finalize_xdp_rx(xdp_ring, xdp_xmit, cached_ntu);
    1324 
    1325         if (rx_ring->ring_stats)
    1326                 ice_update_rx_ring_stats(rx_ring, total_rx_pkts,
    1327                                          total_rx_bytes);
    1328 
    1329         /* guarantee a trip back through this routine if there was a failure */
    1330         return failure ? budget : (int)total_rx_pkts;
    1331 }

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
